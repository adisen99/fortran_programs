! This is the Fortran program containing 
! - introduction to conditional statements and 
! - the achar command
! - and the index command

program testingChars

implicit none

character(len=80) :: text
integer :: i

text = 'The intrinsic data type character stores characters and strings.' 

i = index(text, 'character') ! using index to find the first occurence of the string 'character'

if (i /= 0) then 
    print*, 'The word character found at position', i
    print*, 'in text: ', text
end if

end program testingChars
