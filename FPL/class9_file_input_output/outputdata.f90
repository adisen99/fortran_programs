! Fortran program to open, clost, read and write data from a file
! This is basic file input/output in fortran

program outputdata
    implicit none

    real, DIMENSION(100) :: x, y, p, q
    integer :: i

    do i = 1,100
        x(i) = i * 0.1
        y(i) = sin(x(i)) * (1 - cos(x(i)/3.0))
    end do

    ! Output the data to a dat file
    open(1, file = 'data.dat', status = 'new')
    do i = 1,100
        write(1,*) x(i), y(i)
    end do
    close(1)

    ! opening a file for reading

    open(2, file = 'data.dat', status = 'old')
    do i = 1,100
        read(2,*) p(i), q(i)
    end do
    close(2)

    do i = 1,100
        write(*,*) p(i), q(i)
    end do

end program outputdata
