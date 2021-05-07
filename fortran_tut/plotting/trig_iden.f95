! fortran program to verify trignometric identities

program trig
    implicit none

    integer :: i
    integer, PARAMETER :: n = 100
    real(KIND=8), DIMENSION(0:n) :: x, sinx, cosx, secx, tanx, cscx, cotx, sin2x
    real, PARAMETER :: pi = 2*asin(1.0)
    real :: increment = 2 * pi/(real(n))

    !do i = 0,n
        !x(i) = i*increment
    !end do

    x(0:n) = [(i*increment, i = 0,n)] ! An alternate way to define the array

    sinx = SIN(x)
    cosx = COS(x)
    tanx = TAN(x)
    secx = 1.0/cosx
    cscx = 1.0/sinx
    cotx = 1.0/tanx
    sin2x = sinx**2 ! this is square of sinx

    10 format("The sine of ", f10.4, " is : ", f10.4)
    20 format("The square of sine of ", f10.4, " is : ", f10.4)
    30 format("The cosine of ", f10.4, " is : ", f10.4)

    open(unit=1, file = 'plot.txt')
    15 format(f10.4, 4x, f10.4, 4x, f10.4)

    do i = 0,n
        !print 10, (x(i)/pi) * 180, sinx(i)
        !print 30, (x(i)/pi) * 180, cosx(i)
        write(unit=1, fmt = 15) (x(i)/pi) * 180, secx(i), cscx(i)
    end do

    close(unit=1)

end program trig
