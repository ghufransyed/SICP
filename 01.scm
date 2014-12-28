
#lang planet neil/sicp

#| 1.1
10
12
8
3
6
nothing
nothing
19
#f
4
16
6
16
=> correct
|#

#|
 (/ (+ 5
        4
        (- 2 
           (- 3 
              (+ 6
                 (/ 4 5)))))
     (* 3
        (- 6 2)
        (- 2 7)))

|#

; 1.3

(define (sum_squares a b)
  (+ (* a a)
     (* b b)))

(define (sum_bigger_squares a b c)
    (cond ((and (<= a b) (<= a c)) (sum_squares b c))
          ((and (<= b a) (<= b c)) (sum_squares a c))
          ((and (<= c a) (<= c b)) (sum_squares a b))
          (else 'undefined_value)))

;1.4
#| based on the evaluation of the predicate, the if expression
evaluates to the + or the - operator. As the position of this expression 
is at the 'beginning' of the parentheses i.e. the first item, 
the resulting operator primitive (+ or -) is applied to each of 
the remaining arguments
|#





