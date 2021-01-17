! The main program to model a tsunami (Simplified)

program tsunami

    use mod_diff, only: diff => diff_centered

    implicit none

    ! Data Declaration
    integer :: i,n

    integer, parameter :: grid_size = 100, num_time_steps = 1000
    integer, parameter :: icenter = 50
    real, parameter :: decay = 0.02
    real, parameter :: dx = 1.0, dt = 0.02, g = 9.8
    real, DIMENSION(grid_size) :: h, u
    real, parameter :: depth = 10.0

    ! Initialise u as 0
    u = 0

    ! loop over array elements and initialise values - Shape of the wave
    init : do i = 1,grid_size
        h(i) = exp(-decay * (i-icenter)**2)
    end do init

    n = 0 ! for time t = 0

    ! write initial water height values to the terminal
    print*, n, h

    time_loop : do n = 1,num_time_steps

        ! Momentum equation du/dt + u*du/dx + g*dh/dx = 0
        u = u - (u * diff(u) + g * diff(h)) / dx * dt

        ! no need to mention array slices below explicitly 
        ! as it is from 1 to grid_size
        h = h - diff((depth + h) * u) / dx * dt ! 1D advection or Continuity equation dh/dt + u*dh/dx = 0 

        print*, n, h
    end do time_loop

end program tsunami
