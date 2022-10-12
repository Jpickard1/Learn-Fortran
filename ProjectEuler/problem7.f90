! find the 10001 prime number

program problem7

    implicit none

    integer :: nth = 10001
    !nth = seive(nth)
    !print *, nth

    integer :: maxsize, i, j, upperbound, primeCount, ubi, nthPrime, l
    real :: sqt, maxsize2
    logical, dimension(1000000) :: N
    !logical :: N(10)
    !logical, dimension(:), allocatable :: N
    maxsize = 1000000
    !logical, dimension(1000000) :: N

    !allocate(N(maxsize))
    N(:) = .true.
    maxsize2 = maxsize
    sqt = sqrt(maxsize2)
    upperbound = floor(sqt)
    ubi = maxsize - 1
    
    primeCount = 0
    do i = 2,1000000
        print *, 'step 0'
        if (N(i) .eqv. .true.) then
            print *, i
            print *, primeCount
            nthPrime = i
            primeCount = primeCount + 1
        end if
        print *, 'step a'
        if (primeCount == nth) then
            exit
        end if
        print *, 'step b'        
        !l = i**2

        do j = i,ubi,i
            N(j) = .false.
        end do
        print *, 'step c'
    end do

end program problem7