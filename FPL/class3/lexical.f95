! Fortran Programme to check the 
! lexical hierarchy/order of characters
! There is lle, lge, lgt, and llt
! We are using conditional statements as well

program lexical

implicit none

character :: x,y,z

x = 'A'
y = 'a'
z = 'B'

if (lgt(x,y)) then
    print*, 'A is lexically greater than a'
else
    print*, 'a is lexically greater than A'
end if

if (lgt(x,z)) then
    print *, 'A is lexically greater than B'
else
    print *, 'B is lexically greater than A'
end if

if (llt(x,y)) then
    print *, 'A is lexically less than a'
end if

if(llt(x,y)) then
    print *, 'A is lexically less than B'
end if

end program lexical
