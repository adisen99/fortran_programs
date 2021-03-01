program deriveDataType

   !type declaration
   type Books
      character(len = 50) :: title
      character(len = 50) :: author
      character(len = 150) :: subject
      integer :: book_id
   end type Books
   
   !declaring type variables
   type(Books) :: book1 
   type(Books) :: book2 

   type(Books), DIMENSION(2) :: list
   
   !accessing the components of the structure
   
   book1%title = "C Programming"
   book1%author = "Nuha Ali"
   book1%subject = "C Programming Tutorial"
   book1%book_id = 6495407 
   
   book2%title = "Telecom Billing"
   book2%author = "Zara Ali"
   book2%subject = "Telecom Billing Tutorial"
   book2%book_id = 6495700

   list(1)%title = "F Programming"
   list(1)%author = "Aditya Sengupta"
   list(1)%subject = "F Programming Tutorial"
   list(1)%book_id = 5407 
   
   list(2)%title = "Billing"
   list(2)%author = "Ali"
   list(2)%subject = "Tutorial"
   list(2)%book_id = 6450
  
   !display book info
   
   Print *, book1%title 
   Print *, book1%author 
   Print *, book1%subject 
   Print *, book1%book_id  
   
   Print *, book2%title 
   Print *, book2%author 
   Print *, book2%subject 
   Print *, book2%book_id  

   Print *, list(1)%title 
   Print *, list(1)%author 
   Print *, list(1)%subject 
   Print *, list(1)%book_id  
   
   Print *, list(1)%title 
   Print *, list(2)%author 
   Print *, list(2)%subject 
   Print *, list(2)%book_id

end program deriveDataType
