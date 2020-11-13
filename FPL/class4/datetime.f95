! Very Important program
! to convert datetime to individual 
! year, date and time

program datetime
    implicit none

    CHARACTER(LEN=8) :: dateinfo ! ccyymmdd
    CHARACTER(LEN=4) :: year,month*2,day*2
    CHARACTER(LEN=10) :: timeinfo ! hhmmss.sss
    CHARACTER(LEN=2) :: hour, minute, second*6

    CALL DATE_AND_TIME(dateinfo, timeinfo)

    ! let's break year dateinfo into year, month and day
    ! dateinfo has the format ccyymmdd where cc is century

    year = dateinfo(1:4)
    month = dateinfo(5:6)
    day = dateinfo(7:8)

    ! let's break timeinfo into hour, minute and seconds

    hour = timeinfo(1:2)
    minute = timeinfo(3:4)
    second = timeinfo(5:6)

    ! now let us print all the valid info

    PRINT*, 'DateString: ', dateinfo
    PRINT*, 'year: ', year
    PRINT*, 'month: ', month
    PRINT*, 'day: ', day

    PRINT*, 'TimeString: ', timeinfo
    PRINT*, 'hour: ', hour
    PRINT*, 'minute: ', minute
    PRINT*, 'seconds: ', second

end program datetime
