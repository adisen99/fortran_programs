program circle_test
    use class_Circle
    implicit none

    type(Circle):: c     ! Declare a variable of type Circle.
    c = Circle(1.5)      ! Use the implicit constructor, radius = 1.5.
    call circle_print(c) ! Call a class subroutine 
end program circle_test

