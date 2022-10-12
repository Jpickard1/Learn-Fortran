program do_concurrent

implicit none

integer :: i

do concurrent (i = 1:10000000)
  print *, i
end do

end program do_concurrent