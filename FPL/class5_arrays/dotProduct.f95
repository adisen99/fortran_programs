! Matrix and vector multipication

program arrayDotProduct
    implicit none

    real,dimension(5):: a,b
    INTEGER:: i, j, asize, bsize

    asize = SIZE(a)
    bsize = size(b)

    do i = 1, asize
        a(i) = i
        end do

    do j = 1, bsize
        b(j) =  j*2
    end do

    do i = 1, asize
        PRINT*, a(i)
    end do

    do j = 1, bsize
        PRINT*, b(j)
    end do

    PRINT*, 'Dot Product: }'    
    PRINT*, DOT_PRODUCT(a, b)
end program arrayDotProduct
