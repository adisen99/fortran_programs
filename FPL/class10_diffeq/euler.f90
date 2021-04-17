! program to use the Euler's method in fortran

program euler
    implicit none

    real, DIMENSION(6) :: x, y, df
    integer :: i,j
    real, parameter :: h = 0.1

    ! define the input values
    do i = 1,6
        x(i) = 0 + (i * h)
    end do

    y(1) = 1 ! initialised value of y

    ! make the algorithm
    do i = 2,6
        y(i) = df(x(i-1),y(i-1))
    end do

    WRITE(*,*) x,y

end program euler

function df(x,y)
    implicit none
    real, INTENT(IN) :: x(:), y(:)
    real :: df(size(x))

    df = y - x
end function df
