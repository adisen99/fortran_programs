! Fortran code to convert length in m to cm
program conversion

implicit none
real::input_m,output_cm

print*, 'Type length in meters'

read*, input_m

output_cm = 100.0*input_m

print*, 'length in centimetre =',output_cm
 
end program conversion