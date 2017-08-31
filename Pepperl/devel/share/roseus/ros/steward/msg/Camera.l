;; Auto-generated. Do not edit!


(when (boundp 'steward::Camera)
  (if (not (find-package "STEWARD"))
    (make-package "STEWARD"))
  (shadow 'Camera (find-package "STEWARD")))
(unless (find-package "STEWARD::CAMERA")
  (make-package "STEWARD::CAMERA"))

(in-package "ROS")
;;//! \htmlinclude Camera.msg.html


(defclass steward::Camera
  :super ros::object
  :slots (_lanes _angle _dir _any_line _pos_y ))

(defmethod steward::Camera
  (:init
   (&key
    ((:lanes __lanes) 0)
    ((:angle __angle) 0.0)
    ((:dir __dir) "")
    ((:any_line __any_line) nil)
    ((:pos_y __pos_y) 0.0)
    )
   (send-super :init)
   (setq _lanes (round __lanes))
   (setq _angle (float __angle))
   (setq _dir (string __dir))
   (setq _any_line __any_line)
   (setq _pos_y (float __pos_y))
   self)
  (:lanes
   (&optional __lanes)
   (if __lanes (setq _lanes __lanes)) _lanes)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:any_line
   (&optional __any_line)
   (if __any_line (setq _any_line __any_line)) _any_line)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:serialization-length
   ()
   (+
    ;; int8 _lanes
    1
    ;; float32 _angle
    4
    ;; string _dir
    4 (length _dir)
    ;; bool _any_line
    1
    ;; float32 _pos_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _lanes
       (write-byte _lanes s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _dir
       (write-long (length _dir) s) (princ _dir s)
     ;; bool _any_line
       (if _any_line (write-byte -1 s) (write-byte 0 s))
     ;; float32 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _lanes
     (setq _lanes (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lanes 127) (setq _lanes (- _lanes 256)))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _any_line
     (setq _any_line (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get steward::Camera :md5sum-) "d7955391981ec33d82887b36a30719f2")
(setf (get steward::Camera :datatype-) "steward/Camera")
(setf (get steward::Camera :definition-)
      "int8 lanes
float32 angle
string dir
bool any_line
float32 pos_y
")



(provide :steward/Camera "d7955391981ec33d82887b36a30719f2")


