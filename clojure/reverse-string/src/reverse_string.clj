(ns reverse-string)

(defn reverse-string [s]
  (apply str (apply conj () (seq s))))
