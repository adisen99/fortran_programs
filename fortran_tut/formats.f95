! Forran program to show format specifications for read
! print statements

program formats
    implicit none

    integer :: a
    real :: ar, br
    CHARACTER*10 :: ac
    
    !read 5, a, ar, br
    read '(i6, f8.3, e12.5)', a, ar, br
    read '(A40)', ac
    !5 format(i6,f8.3)

    10 format("with formatting", i5, 4X, f6.2, 4X, e13.6)

    print 10, a, ar, br
    print*, "Without formatting", a, ar, br
    print '(A10)', ac

end program formats
