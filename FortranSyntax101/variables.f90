program variables
    implicit none

    integer :: year
    real :: e
    complex :: frequency
    character :: name
    logical :: Fortran

    print *, year
    print *, e
    print *, frequency
    print *, name
    print *, Fortran

    year = 2022
    e = 2.71
    frequency = (1,-1)
    name = 'J'
    Fortran = (1 == 2)

    print *, year
    print *, e
    print *, frequency
    print *, name
    print *, Fortran

end program variables
