




;; calling with (maphash #'print-hash-entry nomdelatable)
(defun print-hash-entry (key value)
  (format t "The value associated with the key ~S is ~S~%" key value))


;;calling-> (add-next-letter-aux list letter () nil)
(defun add-next-letter-aux(sequence1 letter sequence2 foundp)
"
update the count of letter in the list 

sequence1: a list (looking like '( (\"t\" . 1) (\"o\" . 4)))
letter: the letter we want to find in the sequence
sequence2: needed to accumulate result
foundp: a boolean to see if we already found the letter

result: a list like sequence1, with the updated count for the letter
"
  (let ((flag nil))
    (cond 
      ((and (null sequence1) foundp)  sequence2)
      ((null sequence1) (append `((,letter . 1)) sequence2))
      (T (when (equal letter (car (car sequence1)))
	   (incf (cdr (car  sequence1)))
	   (setf flag T))
	 (add-next-letter-aux 
	  (cdr sequence1) 
	  letter 
	  (append sequence2 (list (car sequence1)))
	  (or flag foundp))))))
   

(defun add-next-letter (sequence letter)
  (add-next-letter-aux sequence letter () nil)) 


(defun frequency-counter (k-order text-input)
" Build a table of frequency and of next letter for every k-gram in the
text in input"
  (let ((table-frequency (make-hash-table :test 'equal))
	(token nil)
	(letter nil))
    (dotimes (index  (- (length text-input) (- k-order 1)))
      (setf token (subseq text-input index (+ index k-order)))
      (if (< (+ index k-order) (length text-input))
	  (setf letter (elt text-input (+ index k-order)))
	  (setf letter nil))
      (if (gethash token table-frequency)
	  (setf (gethash token table-frequency)
		(append (list (+ (first (gethash token table-frequency))1))
			(add-next-letter (cdr (gethash token table-frequency)) letter)))
	  (setf (gethash token table-frequency) 
		(append '(1) 
			(add-next-letter () letter)))))
      table-frequency))

