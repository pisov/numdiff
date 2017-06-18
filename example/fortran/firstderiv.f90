program firstderiv
  implicit none

  real :: x, h, f0, fp1, fp2, fm1, fm2, fprime
  real :: fprime_two_points, fprime_three_points, fprime_five_points
  integer :: i

  x = 1.e0
  h = 0.1e0

  do i = 1, 10
    f0  = sin(x)
    fp1 = sin(x+h)
    fm1 = sin(x-h)
    fp2 = sin(x+2*h)
    fm2 = sin(x-2*h)
    fprime = cos(x)

    fprime_two_points = (fp1 - f0) / h
    fprime_three_points = (fp1 - fm1) / (2 * h)
    fprime_five_points = (fm2 - 8*fm1 + 8*fp1 - fp2) / (12 *h)

    write(*,'(4F15.8)') h, abs(fprime_two_points-fprime), abs(fprime_three_points-fprime), abs(fprime_five_points-fprime)
    h = h / 10
  end do

end program firstderiv

