(defun double-number(x)
  (* x 2))

(defun double-list(list-to-double)
  "Doubles LIST-TO-DOUBLE
LIST-TO-DOUBLE: the list that needs to be doubled"
  (mapcar 'double-number list-to-double))

(defun times-param(list-to-multiply factor)
  "Multiplies each element in LIST-TO-MULTIPLY by FACTOR"
  (mapcar (lambda (x) (* x factor)) list-to-multiply))

(defun count-first-level-numbers(list-to-explore)
  "Counts first-level atoms that are also numbers
LIST-TO-EXPLORE: the list that needs to be explored, with and without atomic components"
  (cond ((null list-to-explore) 0)
	((numberp (first list-to-explore)) (+ 1 (count-first-level-numbers (rest list-to-explore))))
	(T (count-first-level-numbers (rest list-to-explore)))
	))

(defun count-all-levels-numbers(list-to-explore)
  "Counts all numbers on all levels of the list"
  (cond ((numberp list-to-explore) 1)
	((atom list-to-explore) 0)
	(T (+ (count-all-levels-numbers (first list-to-explore))
	      (count-all-levels-numbers (rest list-to-explore))))))

(defun count-all-levels-lists(list-to-explore)
  "Count all lists inside LIST-TO-EXPLORE on all levels"
  (cond	((atom list-to-explore) 0)
	((listp (first list-to-explore)) (+ 1 (count-all-levels-lists (first list-to-explore)) (count-all-levels-lists (rest list-to-explore))))
	(T (count-all-levels-lists (rest list-to-explore)))))

(defun remove-element(list-to-remove-from element)
  "Remove ELEMENT from LIST-TO-REMOVE-FROM"
  (cond ((null list-to-remove-from) nil)
	((equal (first list-to-remove-from) element) (remove-element (rest list-to-remove-from) element))
	(T (append (list (first list-to-remove-from)) (remove-element (rest list-to-remove-from) element)))))

(defun remove-element-all-levels(list-to-remove-from element)
  (error "Please implement this function"))

(defun remove-element-lambda(list-to-remove-from element)
  "FIXME: it does not remove but replaces with `nil`."
  (mapcar (lambda (x) (cond ((equal x element) nil)(T x))) list-to-remove-from))

(defun last-element(thelist)
  "Get the last element of THELIST"
  (cond ((null thelist) nil)
	((null (rest thelist)) (first thelist))
	(T (last-element (rest thelist)))))

(defun function-factory(x)
  "!?"
  (lambda () (+ 1 x)))
