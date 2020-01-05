(ns armstrong-numbers)

(defn split-number [num]
  (map read-string (map str (seq (str num))))
)

(defn armstrong? [num] 
  (== num (reduce + (map #(Math/pow % (count (str num))) (split-number num))))
)