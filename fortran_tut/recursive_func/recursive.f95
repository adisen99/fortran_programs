!! Program to determine the permutation and combination
!! Recursive functions

program percom
    implicit none

    INTEGER(KIND=8), external :: per, comm, com, comb
    INTEGER(KIND=8) :: n, r, per1, com1, com2, com3

    print*, "Enter the value of n and r: "
    read*, n, r

    per1 = per(n,r)
    com1 = com(per1,r)
    com2 = comm(n,r)
    com3 = comb(n,r)

    print*, " The permutation of ", r, " in", n, " : ", per1
    print*, " The combination of ", r, " in", n, " : ", com1
    print*, " The combination of ", r, " in", n, " : ", com2
    print*, " The combination of ", r, " in", n, " : ", com3

end program percom
