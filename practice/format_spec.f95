! Program for checking formatting in Fortran

program format_spec

implicit none

integer:: i = 12345

real:: j = 5.8938492847

real, dimension (5):: v = (/ 1.1,1.2,1.4,1.6,1.9 /)

print '(i5)', i ! integer in field width of 5

print '(f10.8)', j ! real no. which has a field width of 10 of which 8 characters reserved for fractional character

print '(5f8.3)', v ! 5 real no. which has field width of 5 but each has a width of 8 and 3 characters reserved for 
                   ! the fractional part 	

print '(e10.3)', j ! exponential no. which has a width of 10 and 3 characters for fractional part

print '(i5 f15.8)', i,j ! both integer and real

end program format_spec
