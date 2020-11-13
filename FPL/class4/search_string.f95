! Searching for a string in a substring

program hello
    implicit none

    CHARACTER(LEN=30) :: mystring
    CHARACTER(LEN=10) :: teststring

    mystring = 'This is a test'
    teststring = 'test'

    if(INDEX(mystring, teststring)==0) then
        PRINT*, 'teststring not found'
    else
        PRINT*, 'teststring found at index: ', INDEX(mystring, teststring)
    end if

end program hello
