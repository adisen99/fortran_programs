"""
plot_water_height_multipanel.py

Reads output of tsunami and plots the results in an image file.
"""
import argparse
parser = argparse.ArgumentParser()
parser.add_argument('input_file', help='text file output by the tsunami simulator (chapter 2 version)')
args = parser.parse_args()

input_file = args.input_file

import numpy as np
import matplotlib.pyplot as plt
import matplotlib

matplotlib.use('Agg')
matplotlib.rcParams.update({'font.size': 16})

# read data into a list
data = [line.rstrip().split() for line in open(input_file).readlines()]

time = [float(line[0]) for line in data]
h = np.array([[float(x) for x in line[1:]] for line in data])
x = np.arange(1, h.shape[1]+1)

fig = plt.figure(figsize=(8,3))
plt.xticks(range(25,125,25))
plt.yticks(np.arange(0.2,1.4,0.2))
x = np.arange(1,101)
plt.xlabel("Distance(m)")
plt.ylabel("Water Elevation(m)")

for n,t in enumerate(time):
    if not n % 50 == 0: continue # only plot if divisible by 5
    print(f'Plotting time step {n}')
    plt.cla()
    plt.plot(x, h[n], 'b.')
    plt.ylim(-0.2, 1.2)
    plt.xlim(1,100)
    plt.title(r'Water elevation [m], time step' + str(n))
    plt.savefig('./images/water_height'+ '%4.4i' % n + '.png')
