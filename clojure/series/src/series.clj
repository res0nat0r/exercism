(ns series)

(defn char-to-int [input]
  (reduce * (map #(- (int %) 48) input)))

(defn slices [string length] 

; (reduce max (map char-to-int (partition 3 length string)))
(map char-to-int (partition 3 length string))
)


