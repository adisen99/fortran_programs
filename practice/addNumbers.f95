! Fortran95 code to determine the sum of two numbers
! given as user input.

PROGRAM addNumbers
    
    IMPLICIT NONE

    ! Executable statements

    REAL :: a,b, result

    print*, "Type the value of a -"

    read*, a

    print*, "Type the value of b -"

    read*, b

    result = a + b

    print*, "The sum of the given numbers = ", result

END PROGRAM addNumbers
