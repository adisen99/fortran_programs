module mod_diff
    implicit none
    PRIVATE
    PUBLIC :: diff_upwind, diff_centered

contains
    function diff_upwind(x) result(diff)
        real, INTENT(IN) :: x(:)
        real :: diff(size(x))
        integer :: grid_size
        grid_size = size(x)
        diff(1) = (x(1) - x(grid_size)) 
        diff(2:grid_size) = x(2:grid_size) - x(1:grid_size-1) 
    end function diff_upwind

    function diff_centered(x) result(diff) ! Don't fully understand this function?
        real, INTENT(IN) :: x(:)
        real :: diff(size(x))
        integer :: grid_size
        grid_size = size(x)
        diff(1) = (x(2) - x(grid_size)) / 2
        diff(grid_size) = (x(1) - x(grid_size-1)) / 2
        diff(2:grid_size-1) = x(3:grid_size) - x(1:grid_size-2) 
    end function diff_centered
end module mod_diff
