;; Auto-generated. Do not edit!


(when (boundp 'steward::Motors)
  (if (not (find-package "STEWARD"))
    (make-package "STEWARD"))
  (shadow 'Motors (find-package "STEWARD")))
(unless (find-package "STEWARD::MOTORS")
  (make-package "STEWARD::MOTORS"))

(in-package "ROS")
;;//! \htmlinclude Motors.msg.html


(defclass steward::Motors
  :super ros::object
  :slots (_motor1_pwm _motor2_pwm ))

(defmethod steward::Motors
  (:init
   (&key
    ((:motor1_pwm __motor1_pwm) 0)
    ((:motor2_pwm __motor2_pwm) 0)
    )
   (send-super :init)
   (setq _motor1_pwm (round __motor1_pwm))
   (setq _motor2_pwm (round __motor2_pwm))
   self)
  (:motor1_pwm
   (&optional __motor1_pwm)
   (if __motor1_pwm (setq _motor1_pwm __motor1_pwm)) _motor1_pwm)
  (:motor2_pwm
   (&optional __motor2_pwm)
   (if __motor2_pwm (setq _motor2_pwm __motor2_pwm)) _motor2_pwm)
  (:serialization-length
   ()
   (+
    ;; int16 _motor1_pwm
    2
    ;; int16 _motor2_pwm
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motor1_pwm
       (write-word _motor1_pwm s)
     ;; int16 _motor2_pwm
       (write-word _motor2_pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motor1_pwm
     (setq _motor1_pwm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motor2_pwm
     (setq _motor2_pwm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get steward::Motors :md5sum-) "70b13c5ef9c65dbf694e40488c676596")
(setf (get steward::Motors :datatype-) "steward/Motors")
(setf (get steward::Motors :definition-)
      "int16 motor1_pwm
int16 motor2_pwm

")



(provide :steward/Motors "70b13c5ef9c65dbf694e40488c676596")


