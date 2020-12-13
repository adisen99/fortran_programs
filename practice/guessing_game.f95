! Guessing game - guess the number 

program guess_my_number
   implicit none
   integer, parameter:: dp=kind(0.d0)
   
   integer                          :: guess
   real(dp)                         :: rand
   integer                          :: i, clock, count, n
   integer,dimension(:),allocatable :: seed
   
   real,parameter :: rmax = 20
   
   !initialize random number generator:
   call random_seed(size=n)
   allocate(seed(n))
   call system_clock(count)
   seed = count
   call random_seed(put=seed)
   deallocate(seed)
   
   !pick a random number between 1 and rmax:
   call random_number(rand)          !r between 0.0 and 1.0
   i = int((rmax-1.0)*rand + 1.0)    !i between 1 and rmax
   
   !get user guess:
   write(*,'(A)') 'I''m thinking of a number between 1 and 20.'
   do   !loop until guess is correct
      write(*,'(A)',advance='NO') 'Enter Guess: '
      read(*,'(I5)') guess
      if (guess==i) exit
      write(*,*) 'Sorry, try again.'
   end do
   
   write(*,*) 'You''ve guessed my number!'
   
end program guess_my_number
