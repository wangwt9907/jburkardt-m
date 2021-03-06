function a = downshift ( n )

%*****************************************************************************80
%
%% DOWNSHIFT returns the DOWNSHIFT matrix.
%
%  Formula:
%
%    if ( I-J == 1 mod ( n ) )
%      A(I,J) = 1
%    else
%      A(I,J) = 0
%
%  Example:
%
%    N = 4
%
%    0 0 0 1
%    1 0 0 0
%    0 1 0 0
%    0 0 1 0
%
%  Rectangular properties:
%
%    A is integral: int ( A ) = A.
%
%    A is a zero/one matrix.
%
%  Square Properties:
%
%    A is generally not symmetric: A' /= A.
%
%    A is nonsingular.
%
%    A is a permutation matrix.
%
%    det ( A ) = (-1)^(N-1)
%
%    A is persymmetric: A(I,J) = A(N+1-J,N+1-I).
%
%    A is a Hankel matrix: constant along anti-diagonals.
%
%    A is an N-th root of the identity matrix.
%    Therefore, the inverse of A = A^(N-1).
%
%    Any circulant matrix generated by a column vector v can be regarded as
%    the Krylov matrix ( v, A*v, A^2*V, ..., A^(N-1)*v).
%
%    The inverse of A is the upshift operator.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    04 October 2007
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the number of rows and columns of the matrix.
%
%    Output, real A(N,N), the matrix.
%
  a = zeros ( n, n );

  for i = 1 : n
    for j = 1 : n
      if ( i4_modp ( i - j, n ) == 1 )
        a(i,j) = 1.0;
      else
        a(i,j) = 0.0;
      end
    end
  end

  return
end
