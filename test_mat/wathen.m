function a = wathen ( nx, ny, n )

%*****************************************************************************80
%
%% WATHEN returns the WATHEN matrix.
%
%  Discussion:
%
%    The Wathen matrix is a finite element matrix which is sparse.
%
%    The entries of the matrix depend in part on a physical quantity
%    related to density.  That density is here assigned random values between
%    0 and 100.
%
%    The matrix order N is determined by the input quantities NX and NY,
%    which would usually be the number of elements in the X and Y directions.
%    The value of N is
%
%      N = 3*NX*NY + 2*NX + 2*NY + 1,
%
%    and sufficient storage in A must have been set aside to hold
%    the matrix.
%
%    A is the consistent mass matrix for a regular NX by NY grid
%    of 8 node serendipity elements.
%
%    The local element numbering is
%
%      3--2--1
%      |     |
%      4     8
%      |     |
%      5--6--7
%
%    Here is an illustration for NX = 3, NY = 2:
%
%     23-24-25-26-27-28-29
%      |     |     |     |
%     19    20    21    22
%      |     |     |     |
%     12-13-14-15-16-17-18
%      |     |     |     |
%      8     9    10    11
%      |     |     |     |
%      1--2--3--4--5--6--7
%
%    For this example, the total number of nodes is, as expected,
%
%      N = 3 * 3 * 2 + 2 * 2 + 2 * 3 + 1 = 29
%
%  Properties:
%
%    A is symmetric positive definite for any positive values of the
%    density RHO(X,Y), which is here given the value 1.
%
%    The problem could be reprogrammed so that RHO is nonconstant,
%    but positive.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 July 2014
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Nicholas Higham,
%    Algorithm 694: A Collection of Test Matrices in MATLAB,
%    ACM Transactions on Mathematical Software,
%    Volume 17, Number 3, September 1991, pages 289-305.
%
%    Andrew Wathen,
%    Realistic eigenvalue bounds for the Galerkin mass matrix,
%    IMA Journal of Numerical Analysis,
%    Volume 7, Number 4, October 1987, pages 449-457.
%
%  Parameters:
%
%    Input, integer NX, NY, values which determine the size of A.
%
%    Input, integer N, the order of N, as determined by NX and NY.
%
%    Output, real A(N,N), the matrix.
%
  a = zeros ( n, n );

  em =  [ ...
     6.0, -6.0,  2.0, -8.0,  3.0, -8.0,  2.0, -6.0; ...
    -6.0, 32.0, -6.0, 20.0, -8.0, 16.0, -8.0, 20.0; ...
     2.0, -6.0,  6.0, -6.0,  2.0, -8.0,  3.0, -8.0; ...
    -8.0, 20.0, -6.0, 32.0, -6.0, 20.0, -8.0, 16.0; ...
     3.0, -8.0,  2.0, -6.0,  6.0, -6.0,  2.0, -8.0; ...
    -8.0, 16.0, -8.0, 20.0, -6.0, 32.0, -6.0, 20.0; ...
     2.0, -8.0,  3.0, -8.0,  2.0, -6.0,  6.0, -6.0; ...
    -6.0, 20.0, -8.0, 16.0, -8.0, 20.0, -6.0, 32.0 ];

  for j = 1 : ny

    for i = 1 : nx
%
%  For the element (I,J), determine the indices of the 8 nodes.
%
      node(1) = 3 * j * nx + 2 * j + 2 * i + 1;
      node(2) = node(1) - 1;
      node(3) = node(1) - 2;

      node(4) = ( 3 * j - 1 ) * nx + 2 * j + i - 1;
      node(8) = node(4) + 1;

      node(5) = ( 3 * j - 3 ) * nx + 2 * j + 2 * i - 3;
      node(6) = node(5) + 1;
      node(7) = node(5) + 2;

      rho = 0.5;
%     [ rho, seed ] = r8_uniform_01 ( seed );
      rho = 100.0 * rho;

      for krow = 1 : 8
        for kcol = 1 : 8

          a(node(krow),node(kcol)) = a(node(krow),node(kcol)) ...
            + rho * em(krow,kcol);

        end
      end

    end
  end

  return
end
