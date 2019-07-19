(declaim (optimize (debug 3) (speed 0) (space 0)))
(defun quick-sort (obj &optional left-bound right-bound)
  (let ((pivot 0)
	(left-bound (if (not left-bound) 0 left-bound))
	(swap-index -1)
	(cursor 0)
	(right-bound (if (not right-bound)(- (list-length obj) 1) right-bound)))

    (if (or (< left-bound right-bound)
	    (= left-bound right-bound))
	(progn
	  (setq pivot (nth right-bound obj))
	  (loop while (< cursor right-bound)
	     do
	       (if (< (nth cursor obj) pivot)
		   ;; element is less than pivot, increment swap index and swap numbers
		   (progn
		     (setq swap-index (+ swap-index 1))
		     (rotatef (nth cursor obj) (nth swap-index obj))))
	       (setq cursor (+ cursor 1)))
	  (rotatef (nth right-bound obj) (nth (+ swap-index 1) obj))
	  (quick-sort obj left-bound swap-index)
	  (quick-sort obj (+ swap-index 2) right-bound))))obj)
