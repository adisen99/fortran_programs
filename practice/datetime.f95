! Fortran Program using the date_and_time 
! function to give the date and time string 
! We also extract the date, time, etc. seperately

program datetime

implicit none

character(len = 8) :: dateinfo ! ccyymmdd where cc is century
character(len = 4) :: year, month*2, day*2

character(len = 10) :: timeinfo ! hhmmss.sss
character(len = 2) :: hour, minute, second*6

call date_and_time(dateinfo, timeinfo)

! Now we will break dateinfo into year, month and day.

year = dateinfo(1:4)
month = dateinfo(5:6)
day = dateinfo(7:8)

print*, 'Date String: ', dateinfo
print*, 'Year: ', year
print *,'Month: ', month
print *,'Day: ', day

! Now we will break timeinfo into hour, minute, second

hour = timeinfo(1:2)
minute = timeinfo(3:4)
second = timeinfo(5:10)

print*, 'Time String:', timeinfo
print*, 'Hour:', hour
print*, 'Minute:', minute
print*, 'Second:', second

end program datetime
