PROGRAM allocatable_string

    IMPLICIT NONE

    CHARACTER(:), ALLOCATABLE :: first_name
    CHARACTER(:), ALLOCATABLE :: last_name

    ! Explicit allocation statement
    ALLOCATE(CHARACTER(4) :: first_name)
    first_name = 'Aditya'

    ! Allocation on assignment
    last_name = 'Sengupta'

    PRINT*, first_name//' '//last_name

END PROGRAM allocatable_string
