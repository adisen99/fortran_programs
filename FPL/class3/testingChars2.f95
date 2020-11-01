! Introduction to the 
! - Command achar
! - and do loop
! This programme is essentially printing out all ASCII characters 
! in Fortran and their corresponding associated ineger values

program testingChars2

implicit none

character :: ch
integer :: i

do i = 33,126
    ch = achar(i)
    print*, i,'',ch
end do

end program testingChars2
