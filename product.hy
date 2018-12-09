(defn product [a b]
  (if (= (% (* a b) 2) 0)
      "Even"
      "Odd"))

(defmain [&rest args]
  (print (product (read) (read))))