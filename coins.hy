(defn coins [a b c x]
  (setv cnt 0)
  (setv total 0)

  (for [i (range (+ a 1))]
    (for [j (range (+ b 1))]
      (for [k (range (+ c 1))]
        (setv total (+ (* 500 i) (* 100 j) (* 50 k)))
        (when (= total x) (setv cnt (inc cnt))))))

  cnt)

(print (coins (read) (read) (read) (read)))