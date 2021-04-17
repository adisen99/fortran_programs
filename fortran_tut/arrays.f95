! Program to demonstrate the use of arrays

program fib_array
    implicit none

    integer(KIND=16), ALLOCATABLE, DIMENSION(:) :: fib_vals, c_vals
    integer, ALLOCATABLE, DIMENSION(:) :: nvals
    integer :: i,n

    print*, "Enter the number till which fibonacci sequence is required : "
    read '(i3)', n

    ! allocates n integers to the array at runtime
    ALLOCATE(fib_vals(n), c_vals(n), nvals(n))

    fib_vals(1) = 1
    fib_vals(2) = 1

    do i = 3,n
        fib_vals(i) = fib_vals(i-1) + fib_vals(i-2)
    end do

    OPEN(unit=1, file="fib_val.txt")
    15 format(i3, 5x, i25)

    do i = 1,n
        print 10, i, fib_vals(i)
        10 format("The fibonacci value", i3, " is", i15)
        WRITE(unit=1, fmt=15) i, fib_vals(i)
    end do

    CLOSE(unit=1)

    OPEN(unit=2, file="fib_val.txt")

    do i = 1,n
        read(unit=2, fmt=15) nvals(i), c_vals(i)
        print*, "i = ", i, " i-n = ", i - nvals(i), " fib - fib_check = ", &
            & fib_vals(i) - c_vals(i)
    end do

    ! deallocates the array
    DEALLOCATE(fib_vals, c_vals, nvals)
    CLOSE(unit=2)

end program fib_array
