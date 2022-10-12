! Largest prime factor of 600851475143
! https://projecteuler.net/problem=3
program problem3

    use iso_fortran_env
    implicit none

    real(kind=int64) :: bignum, sqt
    integer(kind=int64) :: maxval, maxprime, i, j, bignum2
    logical, dimension(:), allocatable :: isprime

    bignum = 600851475143
    bignum2 = 600851475143
    sqt = sqrt(bignum)
    maxval = floor(sqt)
    allocate(isprime(maxval))
    isprime(:) = .true.

    ! Loop until squareroot of r
    do i = 2,maxval
        ! Check if r divides the number and is prime
        if ((mod(bignum2, i) == 0) .and. (isprime(i))) then
            ! update max prime and remove multiples of i from consideration
            print *, i
            maxprime = i
            do j = i,maxval,i
                isprime(j) = .false.
            end do
        end if
    end do

    print *, maxprime

end program problem3