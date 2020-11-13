! Program to pass Arrays to Procedures as an argument

program arrayToProcedure

implicit none

    integer, dimension(5) :: myArray
    integer :: i

    call fillArray(myArray)
    call printArray(myArray)

end program arrayToProcedure



subroutine fillArray(A)

implicit none

    integer, dimension(5), intent(out) :: a

    ! locan variables
    integer :: i
    do i = 1,5
        a(i) = i
    end do

end subroutine fillArray



subroutine printArray(A)

implicit none

    integer, dimension (5) :: a
    integer :: i

    do i = 1,5
        Print*, a(i)
    end do

end subroutine printArray
