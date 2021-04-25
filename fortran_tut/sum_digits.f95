! Program to count the sum of digits of a positive integer number
! Program to count the number of positive numbers in a series of entries

program sum_digits
    implicit none

    integer :: num, sum1, temp
    integer :: n, count1 = 0,i

    print*, "Enter a positive integer: "
    read*, num

    temp = num
    sum1 = 0

    do while (temp /= 0)
        sum1 = sum1 + MOD(temp, 10)
        temp = temp / 10
        !print*, "Sum is: ", sum1
        !print*, "Temp is: ", temp
    end do

    print*, "The number is: ", num
    print*, "And the sum of the digits is: ", sum1
    print*, "Enter a number from 1 to 10: "
    read*, n
    print*, "Enter ", n, " positive and negative values: "

    do i = 1,n
        print*, "Enter value ", i, ": "
        read*, temp

        if (temp < 0) then
            CYCLE
        else
            count1 = count1 + 1
        end if
    end do

    print*, "You have entered ", count1, " positive number(s) out of" &
        & , n, " chance(s)"
end program sum_digits
