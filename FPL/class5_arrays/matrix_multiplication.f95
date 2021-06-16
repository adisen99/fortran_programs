! Program to get the matrix multiplication of two matrices

program matMulProduct

   integer, dimension(3,3) :: a, b, c
   integer :: i, j
    
    ! defining matrix A
   do i = 1, 3
      do j = 1, 3
         a(i, j) = i+j
      end do
   end do
   
   ! defining matrix b
   do i = 1, 3
      do j = 1, 3
         b(i, j) = i*j
      end do
   end do
   
   print*, "A in matrix form"

   call print_matrix(a)
   
   print*, "B in matrix form"

   call print_matrix(b)
   
   c = matmul(a, b)
   Print*, 'Matrix Multiplication: Result Matrix'

    do i = lbound(c,1), ubound(c,1)
        write(*,*) (c(i,j), j = lbound(c,2), ubound(c,2))
    end do
   
end program matMulProduct

subroutine print_matrix(matrix)
    implicit none

    integer, DIMENSION(3,3) :: matrix
    integer :: i, j

    do i = LBOUND(matrix,1), ubound(matrix,1)
        write(*,*) (matrix(i,j),  j = lbound(matrix,2), ubound(matrix,2))
    end do
end subroutine print_matrix
