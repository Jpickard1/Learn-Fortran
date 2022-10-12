! This line computes fibonacci numbers using an array
program fibonacci

    implicit none

    integer :: n = 10
    integer, allocatable :: fibo(:)
    integer :: i

    allocate(fibo(n))

    fibo(0) = 1
    fibo(1) = 1

    do i = 2,n
        fibo(i) = fibo(i-1) + fibo(i-2)
    end do

    do i = 0,n
    print *, fibo(i)
    end do

end program fibonacci