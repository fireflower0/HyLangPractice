(defn traveling [n tm x y]
  (setv res True)
  (for [i (range n)]
    (setv dt   (- (get tm (+ i 1)) (get tm i)))
    (setv dist (+ (abs (- (get x (+ i 1)) (get x i)))
                  (abs (- (get y (+ i 1)) (get y i)))))
    (when (< dt dist)
      (setv res False))
    (unless (= (% dist 2) (% dt 2))
      (setv res False)))
  (if res "Yes" "No"))

(defmain [&rest args]
  (setv n  (read))
  (setv tm (* [0] (+ n 1)))
  (setv x  (* [0] (+ n 1)))
  (setv y  (* [0] (+ n 1)))
  (for [i (range n)]
    (setv buff (list (map int (.split (input)))))
    (setv (get tm (+ i 1)) (get buff 0))
    (setv (get x  (+ i 1)) (get buff 1))
    (setv (get y  (+ i 1)) (get buff 2)))
  (print (traveling n tm x y)))
