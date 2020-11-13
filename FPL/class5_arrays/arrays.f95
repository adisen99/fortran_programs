! Fortran Program introdution to defining arrays/matrices
! and adding values to the said arrays.

program arrays

implicit none

! One can define arrays in the following ways using the dimension attribute

real, dimension (5) :: numbers ! this is 1D array with 5 elements

! THe individual elements of an array can be defined using scripts

integer, dimension(5,5) :: matrix ! A 5x5 array or matrix

integer :: i

! One can also declare an array with some explicit lower bound, for example −

real, dimension(2:6) :: numbers2
integer, dimension (-3:2,0:4) :: matrix2

! Assigning numbers - to array1 (with element numbers) with a loop

do i=1,5
    numbers(i) = i*2.0
end do

!display the values

do i = 1, 5
    print *, numbers(i)
end do

end program arrays
