! A ranom numner generator between and 1 and 100

program random
    implicit none
    REAL :: rand(1)
    INTEGER :: low = 1, high = 100

    CALL RANDOM_NUMBER(rand)
    PRINT "(i3)", low + FLOOR((high+1 - low)*rand)

end program random
