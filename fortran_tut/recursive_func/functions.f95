!! Writing the functions factorial, permutation and combination

! factorial
recursive integer*8 function fact(n) result(fact1) ! integer*8 and kind=8 is same

    implicit none
    integer*8, INTENT(IN) :: n

    if (n == 1 .or. n == 0) then
        fact1 = 1
        RETURN
    else
        fact1 = fact(n-1)
        fact1 = fact1*n
        RETURN
    end if

end function fact

! permutation
integer*8 function per(n,r)
    implicit none
    integer*8, INTENT(IN) :: n,r
    integer*8, external :: fact

    per = fact(n)/fact(n-r)

end function per

! combination
integer*8 function comm(n,r)
    implicit none
    integer*8, INTENT(IN) :: n,r
    integer*8, external :: fact

    comm = fact(n)/(fact(r) * fact(n-r))

end function comm

! second combination
integer*8 function com(per,r)
    implicit none
    integer*8, INTENT(IN) :: per, r
    integer*8, external :: fact

    com = per/fact(r)
end function com

! third combination
integer*8 function comb(n,r)
    implicit none
    integer*8, INTENT(IN) :: n, r
    integer*8, external :: fact, per

    comb = per(n,r)/fact(r)
end function comb
