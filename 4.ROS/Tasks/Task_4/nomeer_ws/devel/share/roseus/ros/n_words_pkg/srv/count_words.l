;; Auto-generated. Do not edit!


(when (boundp 'n_words_pkg::count_words)
  (if (not (find-package "N_WORDS_PKG"))
    (make-package "N_WORDS_PKG"))
  (shadow 'count_words (find-package "N_WORDS_PKG")))
(unless (find-package "N_WORDS_PKG::COUNT_WORDS")
  (make-package "N_WORDS_PKG::COUNT_WORDS"))
(unless (find-package "N_WORDS_PKG::COUNT_WORDSREQUEST")
  (make-package "N_WORDS_PKG::COUNT_WORDSREQUEST"))
(unless (find-package "N_WORDS_PKG::COUNT_WORDSRESPONSE")
  (make-package "N_WORDS_PKG::COUNT_WORDSRESPONSE"))

(in-package "ROS")





(defclass n_words_pkg::count_wordsRequest
  :super ros::object
  :slots (_words ))

(defmethod n_words_pkg::count_wordsRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass n_words_pkg::count_wordsResponse
  :super ros::object
  :slots (_count ))

(defmethod n_words_pkg::count_wordsResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass n_words_pkg::count_words
  :super ros::object
  :slots ())

(setf (get n_words_pkg::count_words :md5sum-) "4dd4fc0aa84b04c0886a72138fb27c19")
(setf (get n_words_pkg::count_words :datatype-) "n_words_pkg/count_words")
(setf (get n_words_pkg::count_words :request) n_words_pkg::count_wordsRequest)
(setf (get n_words_pkg::count_words :response) n_words_pkg::count_wordsResponse)

(defmethod n_words_pkg::count_wordsRequest
  (:response () (instance n_words_pkg::count_wordsResponse :init)))

(setf (get n_words_pkg::count_wordsRequest :md5sum-) "4dd4fc0aa84b04c0886a72138fb27c19")
(setf (get n_words_pkg::count_wordsRequest :datatype-) "n_words_pkg/count_wordsRequest")
(setf (get n_words_pkg::count_wordsRequest :definition-)
      "string words

---

int32 count
")

(setf (get n_words_pkg::count_wordsResponse :md5sum-) "4dd4fc0aa84b04c0886a72138fb27c19")
(setf (get n_words_pkg::count_wordsResponse :datatype-) "n_words_pkg/count_wordsResponse")
(setf (get n_words_pkg::count_wordsResponse :definition-)
      "string words

---

int32 count
")



(provide :n_words_pkg/count_words "4dd4fc0aa84b04c0886a72138fb27c19")


