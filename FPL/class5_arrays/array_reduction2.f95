! Program showcasing the array reducing functions like ALL, COUNT and ANY

program arrayReduction2
implicit none

   real, dimension(1:6) :: a = (/ 21.0, 12.0,33.0, 24.0, 15.0, 16.0 /)
   Print *, maxval(a)
   Print *, minval(a)
   Print *, sum(a)
   Print *, product(a)
   
end program arrayReduction2
