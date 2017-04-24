;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun item-at(index list)
  (if (< index 0)
    nil
    (if (= index 0)
      (car list)
      (item-at (- index 1) (cdr list))
    )
  )
)
item-at

(item-at -1 '(red blue green white))
nil

(item-at 1 '(red blue green white))
blue

(item-at 3 '(red blue green white))
white

(item-at 5 '(red blue green white))
nil
