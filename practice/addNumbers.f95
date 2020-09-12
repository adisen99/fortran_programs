! Fortran95 code to determine the sum of two numbers
! given as user input.

program addNumbers

    implicit none
    
    ! Executable statements
    real :: a, b, result

    print*, 'Type the value of a '

    read*, a

    print*, 'Type the value of b'

    read*, b

    result = a+b
    print*, 'The total is = ', result

end program addNumbers
