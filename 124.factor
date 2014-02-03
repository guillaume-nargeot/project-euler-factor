! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays kernel math.primes.factors
math.ranges project-euler.common sequences sorting ;
IN: project-euler.124

<PRIVATE

: rad ( n -- n )
    unique-factors product ; inline

: rads-upto ( n -- seq )
    [0,b] [ dup rad 2array ] map ;

: (euler124) ( -- seq )
    100000 rads-upto sort-values ;

PRIVATE>

: euler124 ( -- answer )
    10000 (euler124) nth first ;

! [ euler124 ] 100 ave-time
! 373 ms ave run time - 17.61 SD (100 trials)

! TODO: instead of the brute-force method, making the rad
! array in the way of the sieve of eratosthene would scale
! better on bigger values.

SOLUTION: euler124
