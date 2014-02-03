! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math math.primes.factors math.ranges
project-euler.common sequences ;
IN: project-euler.072

! The answer can be found by adding totient(n) for 2 ≤ n ≤ 1e6

: euler072 ( -- answer )
    2 1000000 [a,b] [ totient ] map-sum ;

! [ euler072 ] 100 ave-time
! 5274 ms ave run time - 102.7 SD (100 trials)

SOLUTION: euler072
