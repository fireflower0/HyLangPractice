(defn kagami-mochi [n a]
  (setv res 0)
  (setv num (* [0] 110))
  (for [i (range n)]
    (setv (get num (get a i))
          (inc (get num (get a i)))))
  (for [i (range 101)]
    (when (> (get num i) 0)
      (setv res (inc res))))
  res)

(defmain [&rest args]
  (setv n (read))
  (setv a [])
  (for [i (range n)]
    (.append a (read)))
  (print (kagami-mochi n a)))
