;; Auto-generated. Do not edit!


(when (boundp 'steward::STMdata)
  (if (not (find-package "STEWARD"))
    (make-package "STEWARD"))
  (shadow 'STMdata (find-package "STEWARD")))
(unless (find-package "STEWARD::STMDATA")
  (make-package "STEWARD::STMDATA"))

(in-package "ROS")
;;//! \htmlinclude STMdata.msg.html


(defclass steward::STMdata
  :super ros::object
  :slots (_dirL _dirR _speedL _speedR _n_cntL _n_cntR _battery_12 _battery_24 _safety_button _field1 _field2 _field3 _field4 ))

(defmethod steward::STMdata
  (:init
   (&key
    ((:dirL __dirL) nil)
    ((:dirR __dirR) nil)
    ((:speedL __speedL) 0)
    ((:speedR __speedR) 0)
    ((:n_cntL __n_cntL) 0)
    ((:n_cntR __n_cntR) 0)
    ((:battery_12 __battery_12) 0)
    ((:battery_24 __battery_24) 0)
    ((:safety_button __safety_button) nil)
    ((:field1 __field1) nil)
    ((:field2 __field2) nil)
    ((:field3 __field3) nil)
    ((:field4 __field4) nil)
    )
   (send-super :init)
   (setq _dirL __dirL)
   (setq _dirR __dirR)
   (setq _speedL (round __speedL))
   (setq _speedR (round __speedR))
   (setq _n_cntL (round __n_cntL))
   (setq _n_cntR (round __n_cntR))
   (setq _battery_12 (round __battery_12))
   (setq _battery_24 (round __battery_24))
   (setq _safety_button __safety_button)
   (setq _field1 __field1)
   (setq _field2 __field2)
   (setq _field3 __field3)
   (setq _field4 __field4)
   self)
  (:dirL
   (&optional __dirL)
   (if __dirL (setq _dirL __dirL)) _dirL)
  (:dirR
   (&optional __dirR)
   (if __dirR (setq _dirR __dirR)) _dirR)
  (:speedL
   (&optional __speedL)
   (if __speedL (setq _speedL __speedL)) _speedL)
  (:speedR
   (&optional __speedR)
   (if __speedR (setq _speedR __speedR)) _speedR)
  (:n_cntL
   (&optional __n_cntL)
   (if __n_cntL (setq _n_cntL __n_cntL)) _n_cntL)
  (:n_cntR
   (&optional __n_cntR)
   (if __n_cntR (setq _n_cntR __n_cntR)) _n_cntR)
  (:battery_12
   (&optional __battery_12)
   (if __battery_12 (setq _battery_12 __battery_12)) _battery_12)
  (:battery_24
   (&optional __battery_24)
   (if __battery_24 (setq _battery_24 __battery_24)) _battery_24)
  (:safety_button
   (&optional __safety_button)
   (if __safety_button (setq _safety_button __safety_button)) _safety_button)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:field2
   (&optional __field2)
   (if __field2 (setq _field2 __field2)) _field2)
  (:field3
   (&optional __field3)
   (if __field3 (setq _field3 __field3)) _field3)
  (:field4
   (&optional __field4)
   (if __field4 (setq _field4 __field4)) _field4)
  (:serialization-length
   ()
   (+
    ;; bool _dirL
    1
    ;; bool _dirR
    1
    ;; int16 _speedL
    2
    ;; int16 _speedR
    2
    ;; int16 _n_cntL
    2
    ;; int16 _n_cntR
    2
    ;; int16 _battery_12
    2
    ;; int16 _battery_24
    2
    ;; bool _safety_button
    1
    ;; bool _field1
    1
    ;; bool _field2
    1
    ;; bool _field3
    1
    ;; bool _field4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _dirL
       (if _dirL (write-byte -1 s) (write-byte 0 s))
     ;; bool _dirR
       (if _dirR (write-byte -1 s) (write-byte 0 s))
     ;; int16 _speedL
       (write-word _speedL s)
     ;; int16 _speedR
       (write-word _speedR s)
     ;; int16 _n_cntL
       (write-word _n_cntL s)
     ;; int16 _n_cntR
       (write-word _n_cntR s)
     ;; int16 _battery_12
       (write-word _battery_12 s)
     ;; int16 _battery_24
       (write-word _battery_24 s)
     ;; bool _safety_button
       (if _safety_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _field1
       (if _field1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _field2
       (if _field2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _field3
       (if _field3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _field4
       (if _field4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _dirL
     (setq _dirL (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dirR
     (setq _dirR (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _speedL
     (setq _speedL (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speedR
     (setq _speedR (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _n_cntL
     (setq _n_cntL (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _n_cntR
     (setq _n_cntR (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _battery_12
     (setq _battery_12 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _battery_24
     (setq _battery_24 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _safety_button
     (setq _safety_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _field1
     (setq _field1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _field2
     (setq _field2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _field3
     (setq _field3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _field4
     (setq _field4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get steward::STMdata :md5sum-) "2f54db2db462926e76b4023cd830b792")
(setf (get steward::STMdata :datatype-) "steward/STMdata")
(setf (get steward::STMdata :definition-)
      "bool dirL
bool dirR
int16 speedL
int16 speedR
int16 n_cntL
int16 n_cntR
int16 battery_12
int16 battery_24
bool safety_button
bool field1
bool field2
bool field3
bool field4

")



(provide :steward/STMdata "2f54db2db462926e76b4023cd830b792")


