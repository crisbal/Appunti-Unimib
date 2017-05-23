(defun nopred(predname something)
  (cond ((null something) '())
	((atom something)
	 (if (funcall predname something) something))
	((listp something)
	 (let ((thevalue (nopred predname (first something))))
	   (if (null thevalue)
	       (nopred predname (rest something))
	       (cons thevalue (nopred predname (rest something))))))))

(defun my-reduce(func elements)
  (cond ((null (rest elements)) (first elements))
	(T (my-reduce func
		      (cons (funcall func (first elements) (second elements))
			    (rest (rest elements)))))))

(defun nopred2 (predname list)
  (if (null list) nil
      (let ((head (first list))
	    (tail (rest list)))
	(cond ((null head) (cons '() (nopred2 predname tail)))
	      ((atom head)
	       (if (funcall predname head)
		   (nopred2 predname tail)
		   (cons head (nopred2 predname tail))))
	      ((listp head)
	       (cons (nopred predname head) (nopred2 predname tail)))))))


(defun remove-at(list place)
  (cond ((null list) nil)
	((< place 0) list)
	((= place 0) (rest list))
	(T (cons (first list) (remove-at (rest list) (+ place -1))))))

(defun reverse*(list)
  (cond ((null list) nil)
	(T (cons (reverse* (rest list)) (first list)))))
