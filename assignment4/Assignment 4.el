;Your Name:

;Complete the following

(require 'cl)

;======================
;---- Problem 3 ---
;make the function call mlto-test work
;======================


;---------------
;DO NOT CHANGE THIS FUNCTION
(defun my-LT(x y) (< x y))



;---------------
;ADD TWO MORE FUNCTIONS my-GT and my-EQ



;---------------
;DEFINE THE FUNCTION, BUT DO NOT CHANGE THE SIGNATURE
(defun my-list-total-order(fn L)
)

;---------------
;DO NOT CHANGE THIS FUNCTION
(defun mlto-test(fn L)
  (dolist (l L) (print l) (print (my-list-total-order fn l))))

;---------------
; call 1 ; check whether atoms within each list are equal; call and output are shown below.
(mlto-test #'my-EQ (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))

;---------------
; call 2 ; check whether atoms within each list are less than the next atom; call and output are shown below.;
(mlto-test #'my-LT (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))


;---------------
; call 3 ; check whether atoms within each list are greater than the next atom; call and output are shown below.;

(mlto-test #'my-GT (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))





;======================
;-- Prob 4 ---
; same as previous problem, but using a different approach
;======================


;---------------
;DO NOT CHANGE THIS FUNCTION
(defun my-test(fn2 x y) (funcall fn2 x y))

;---------------
;DEFINE THE FUNCTION, BUT DO NOT CHANGE THE SIGNATURE
(defun my-list(fn fn2 L)
)

;---------------
;calls and corresponding results are shown

(my-list #'my-test #'= '(1))
(my-list #'my-test #'> '(2 1))
(my-list #'my-test #'< '(3 2 1))
(my-list #'my-test #'> '(5 4 3 2 1))
(my-list #'my-test #'> '(1 2))
(my-list #'my-test #'< '(1 2 3))
(my-list #'my-test #'= '(1 2 3 4))
(my-list #'my-test #'< '(1 2 3 4 5))
(my-list #'my-test #'> '(1 2 3 4 5 1))
(my-list #'my-test #'< '(4 1 2 3 2 3))
(my-list #'my-test #'string< '(a b c d e))
(my-list #'my-test #'string< '(b a d))
(my-list #'my-test #'string= '(abc abc abc))
(my-list #'my-test #'string= '(abc abc abe))