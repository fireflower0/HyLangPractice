(defn card-game-for-two [n a]
  (setv a (list (map int a)))
  (.sort a :reverse True)

  (setv alice 0)
  (setv bob 0)

  (for [i (range n)]
    (if (zero? (% i 2))
        (setv alice (+ alice (get a i)))
        (setv bob (+ bob (get a i)))))

  (- alice bob))

(print (card-game-for-two (read) (.split (input))))
