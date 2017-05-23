(defun concat-lists(l1 l2)
  "Concat L1 to L2"
  (cond ((null l1) l2)
	(T (cons (first l1) (concat-lists (rest l1) l2)))))

(defun insert-in-right-place(anumber mylist)
  "Insert a number in the right place in a sorted list"
  (cond ((null mylist) (list anumber))
	((< anumber (first mylist)) (cons anumber mylist))
	(T (cons (first mylist) (insert-in-right-place anumber (rest mylist))))))

(defun join-lists(l1 l2)
  "Join L1 and L2 (no duplicates)"
  (cond ((null l1) l2)
	((member (first l1) l2) (join-lists (rest l1) l2))
	(T (cons (first l1) (join-lists (rest l1) l2)))))

(defun censura-all-levels(mylist word)
  (cond ((null mylist) nil)
	((atom mylist) (if (equal mylist word)
			   'xxx
			   mylist))
	(T (cons (censura-all-levels (first mylist) word) (censura-all-levels (rest mylist) word)))))

(defun only-even-position(mylist)
  (cond ((null mylist) nil)
	((null (rest mylist)) nil)
	(T (cons (second mylist) (only-even-position (rest (rest mylist)))))))

(defun mymapcar(thefunction mylist)
  (if (null mylist)
      nil
      (cons (funcall thefunction (first mylist)) (mymapcar thefunction (rest mylist)))))

