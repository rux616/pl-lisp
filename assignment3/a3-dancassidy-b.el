;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(- 10 (cos 90) (- 10 2))
2.44807361612917

(format "%.4f" (- 10 (cos 90) (- 10 2)))
"2.4481"

(mod 100 3)
1

(message "Hello %s" (let ((x "Dan Cassidy")) x))
"Hello Dan Cassidy"

(car (cdr (cdr '("C++" "C" "C#" "FORTRAN" "ADA" "LISP"))))
"C#"

(defun IsEven (x) "Check if a number is divisible by 2."
       (not (< 0 (mod x 2))))
IsEven

(IsEven 2)
t

(IsEven 3)
nil

(IsEven 100)
t
