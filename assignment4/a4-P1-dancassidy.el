;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun list-reverse(L)
  (if (null L)
    ;true - return nothing
    ()
    ;false - recursively append the car on to the end of the list
    (append (list-reverse (cdr L)) (list (car L))))
)
list-reverse

(list-reverse '(j a n))
(n a j)

(list-reverse '(1 2 (jan feb) mar))
(mar (jan feb) 2 1)

(list-reverse (list 'a 'b 'c))
(c b a)
