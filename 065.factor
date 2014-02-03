! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math lists lists.lazy project-euler.common sequences ;
IN: project-euler.065

<PRIVATE

: (e-frac) ( -- seq )
    2 lfrom [
        dup 3 mod zero? [ 3 / 2 * ] [ drop 1 ] if
    ] lazy-map ;

: e-frac ( n -- n )
    1 - (e-frac) ltake list>array reverse 0
    [ + recip ] reduce 2 + ;

PRIVATE>

: euler065 ( -- answer )
    100 e-frac numerator number>digits sum ;

! [ euler065 ] 100 ave-time
! 4 ms ave run time - 0.33 SD (100 trials)

SOLUTION: euler065
