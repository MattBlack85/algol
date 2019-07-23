(defun quick-sort-array (array &optional left-bound right-bound)
  (let ((pivot 0)
	(left-bound (if (not left-bound)
			0
			left-bound))
	(swap-index -1)
	(cursor 0)
	(right-bound (if (not right-bound)
			 (- (array-total-size array) 1)
			 right-bound)))

    (if (or (< left-bound right-bound)
	    (= left-bound right-bound))
	(progn
	  (setq pivot (aref array right-bound))
	  (loop while (< cursor right-bound)
	     do
	       (if (< (aref array cursor) pivot)
		   ;; element is less than pivot, increment swap index and swap numbers
		   (progn
		     (setq swap-index (+ swap-index 1))
		     (rotatef (aref array cursor) (aref array swap-index))))
	       (setq cursor (+ cursor 1)))
	  (rotatef (aref array right-bound) (aref array (+ swap-index 1)))
	  (quick-sort-array array left-bound swap-index)
	  (quick-sort-array array (+ swap-index 2) right-bound)))) array)
