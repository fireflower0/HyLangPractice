(import math)

(defn find-sum-of-digits [n]
  (setv sums 0)
  (while (> n 0)
    (setv sums (+ sums (% n 10)))
    (setv n (math.floor (/ n 10))))
  sums)

(defn some-sums [n a b]
  (setv total 0)
  (setv sums 0)
  (for [i (range (+ n 1))]
    (setv sums (find-sum-of-digits i))
    (when (and (>= sums a) (<= sums b))
      (setv total (+ total i))))
  total)

(print (some-sums (read) (read) (read)))
