(defn product [a b]
  (if (zero? (% (* a b) 2))
      "Even"
      "Odd"))

(print (product (read) (read)))