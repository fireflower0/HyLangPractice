(defn shift-only [n a]
  (for [i (range n)]
    (setv (get a i) (int (get a i))))

  (setv loop-flg True)
  (setv cnt 0)

  (while loop-flg
    (for [i (range n)]
      (unless (zero? (% (get a i) 2))
        (setv loop-flg False)))

    (for [i (range n)]
      (setv (get a i) (/ (get a i) 2)))

    (when loop-flg (setv cnt (inc cnt))))

  cnt)

(print (shift-only (read) (.split (input))))