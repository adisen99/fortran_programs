! Extracting substrings from a substrings

program subString
    implicit none
    
    CHARACTER(LEN=11) :: hello

    hello = "Hello World!"

   print*, hello(7:11) 
end program subString
