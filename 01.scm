
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

#| 1.5
With applicative-order ('inside-out'), the program will give an 
error or enter a permanent loop, because it will attempt to evaluate p
, which evaluates to p
With normal-order ('outside-in'), the expression will return 0, and the 
expression for y ( '(p)) will never be evaluated

in drracket, the interpreter gets stuck in a loop, indicating that applicative-order
is being used
|#

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))





