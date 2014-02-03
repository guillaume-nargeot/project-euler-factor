! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs hashtables kernel math math.ranges
project-euler.common sequences sets ;
IN: project-euler.074

! Brute force

<PRIVATE

: digit-factorial ( n -- n! )
    { 1 1 2 6 24 120 720 5040 40320 362880 } nth ;

: digits-factorial-sum ( n -- n )
    number>digits [ digit-factorial ] map-sum ;

: chain-length ( n -- n )
    61 <hashtable>
    [ 2dup key? not ]
    [ [ conjoin ] [ [ digits-factorial-sum ] dip ] 2bi ]
    while nip assoc-size ;

PRIVATE>

: euler074 ( -- answer )
    1000000 [1,b] [ chain-length 60 = ] count ;

! [ euler074 ] 10 ave-time
! 25134 ms ave run time - 31.96 SD (10 trials)

SOLUTION: euler074

