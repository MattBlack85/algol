(defun bubble-sort (array)
  (let ((array_length (list-length array))
	(swapped t)
	(index 0))
    (loop while swapped
       do
	 (setq index 0)
	 (setq swapped nil)
	 (loop while (< index (- array_length 1))
	    do
	      (if (< (nth (+ index 1) array) (nth index array))
		  (progn
		    (rotatef (nth (+ index 1) array) (nth index array))
		    (setq swapped t)))
	      (setq index (+ index 1))))) array)
