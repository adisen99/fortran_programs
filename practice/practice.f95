program practice
    implicit none
    REAL :: rand(1)
    INTEGER :: low = 1, high = 10

    CALL RANDOM_NUMBER(rand)
    PRINT "(i2)", low + FLOOR((high+1 - low)*rand)

end program practice
