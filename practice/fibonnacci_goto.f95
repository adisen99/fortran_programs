program fibonnacci_goto

implicit none
integer:: n       ! Declaration of iterator
integer:: i=2
integer:: x, y, z
real:: phi_est      ! Approx phi

print*, 'Type the number upto which the fibonnacci sequence is to run'

read*, n

    z = 0
    y = 1
2   x = y + z
    phi_est = x/(real(y))

    print '(2i15 f10.5)', i, x, phi_est

    z = y
    y = x
    i = i + 1
    if (i < n+1) goto 2

end program fibonnacci_goto
