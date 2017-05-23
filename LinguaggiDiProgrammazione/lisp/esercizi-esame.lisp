(defun sub(a b)
  "Fai a-b senza usare (- a b) ma con solo (1- qualcosa)"
  (cond ((zerop b) a)
        (T (sub (1- a)
                (1- b)))))

(defun mymapcar(thefunction thelist)
  (cond ((null thelist) NIL)
        (T (cons (funcall thefunction
                        (first thelist))
                 (mymapcar thefunction
                           (rest thelist))))))

(defun intersect(list1 list2)
  (cond ((null list1)
         NIL)
        ((member (first list1)
                 list2)
         (cons (first list1)
               (intersect (rest list1)
                          list2)))
        (T (intersect (rest list1)
                      list2))))


(defun double-deep(smth)
  (cond ((null smth) NIL)
        ((numberp smth) (* 2 smth))
        ((atom smth) smth)
        (T (cons (double-deep (first smth))
                 (double-deep (rest smth))))))

(defun boom(element times)
  (cond ((zerop times) NIL)
        (T (cons element
              (boom element (1- times))))))

(defun expand-number(thelist)
  (cond ((null thelist) NIL)
        (T (append (boom (first thelist)
                       (first thelist))
                 (expand-number (rest thelist))))))


(defun sottoliste-smart(thelist)
  (some 'listp thelist))

(defun sottoliste(object)
  (cond ((atom object) NIL)
        ((listp (first object)) T)
        (T (or (sottoliste (first object))
               (sottoliste (rest object))))))

(defun myeval(expression)
  (cond
    ((equal expression 'pi) pi)
    ((equal expression 'e) (exp 1))
    ((numberp expression) expression)
    ((listp expression)
     (let ((valid '(+ - / * sin cos tan)))
       (if (member (first expression) valid)
           (apply (first expression) (mapcar #'myeval (rest expression)))
           (error "undefined function ~A" (first expression)))))
      (T (error "can't eval"))))


(defun reduce*(thelist thefunction &optional (initialvalue 0))
  (if (null thelist)
      initialvalue
      (funcall thefunction
               (first thelist)
               (reduce* (rest thelist)
                        thefunction
                        initialvalue))))

(defun keyval(a &optional &key b c)
  (format T "~A ~A ~A" a b c))


(defun nopred3 (oggetto predicato)
  (cond
    ((null oggetto) NIL)
    ((listp oggetto)
     (cons (nopred3 (first oggetto)
                    predicato)
           (nopred3 (rest oggetto)
                    predicato)))
    (if (funcall predicato oggetto))))

(defun nopred(p l)
  (cond ((null l) NIL)
        ((listp (first l))
         (cons (nopred p (first l))
               (nopred p (rest l))))
        ((ignore-errors (funcall p (first l)))
         (nopred p (rest l)))
        (T (cons (first l)
                 (nopred p (rest l))))))


(defun last-(lista)
  (cond
    ((null lista) NIL)
    ((null (rest lista))
     (first lista))
    ((last- (rest lista)))))
