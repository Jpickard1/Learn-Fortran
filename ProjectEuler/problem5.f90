! Find the smallest multiple of 1,...,20
! https://projecteuler.net/problem=5
program problem5

    use iso_fortran_env
    implicit none

    integer(int64) :: maxprod
    integer :: i, j, searchsize, s, offset, k
    integer, dimension(:), allocatable :: ismultiple
    logical :: cont = .true.

    searchsize = 1000000
    maxprod = 1
    do s=1,20
        maxprod = maxprod * s
    end do

    allocate(ismultiple(searchsize))

    print *, maxprod
    print *, searchsize

    do s = 0,maxprod,searchsize
        print *, s
        ismultiple(:) = 0
        !print *, 'Step 1'

        do i=20,3
            !print *,i
            !print *, ismultiple(0:100)
            offset = 0
            do k = 0,19
                if (mod(s, i+k) == 0) then
                    offset = k
                    exit
                end if
            end do
            do j = s+offset,searchsize,i
                ismultiple(j) = ismultiple(j) + 1
            end do
        end do

        do j=0,maxprod,2
            if (ismultiple(j) == 18) then
                print *, (j + s)
                cont = .false.
            end if
        end do
        if (cont .eqv. .false.) then
            exit
        end if
    end do

end program problem5
