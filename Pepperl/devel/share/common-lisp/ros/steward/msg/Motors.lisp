; Auto-generated. Do not edit!


(cl:in-package steward-msg)


;//! \htmlinclude Motors.msg.html

(cl:defclass <Motors> (roslisp-msg-protocol:ros-message)
  ((motor1_pwm
    :reader motor1_pwm
    :initarg :motor1_pwm
    :type cl:fixnum
    :initform 0)
   (motor2_pwm
    :reader motor2_pwm
    :initarg :motor2_pwm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Motors (<Motors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steward-msg:<Motors> is deprecated: use steward-msg:Motors instead.")))

(cl:ensure-generic-function 'motor1_pwm-val :lambda-list '(m))
(cl:defmethod motor1_pwm-val ((m <Motors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:motor1_pwm-val is deprecated.  Use steward-msg:motor1_pwm instead.")
  (motor1_pwm m))

(cl:ensure-generic-function 'motor2_pwm-val :lambda-list '(m))
(cl:defmethod motor2_pwm-val ((m <Motors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:motor2_pwm-val is deprecated.  Use steward-msg:motor2_pwm instead.")
  (motor2_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motors>) ostream)
  "Serializes a message object of type '<Motors>"
  (cl:let* ((signed (cl:slot-value msg 'motor1_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor2_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motors>) istream)
  "Deserializes a message object of type '<Motors>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor1_pwm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor2_pwm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motors>)))
  "Returns string type for a message object of type '<Motors>"
  "steward/Motors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motors)))
  "Returns string type for a message object of type 'Motors"
  "steward/Motors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motors>)))
  "Returns md5sum for a message object of type '<Motors>"
  "70b13c5ef9c65dbf694e40488c676596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motors)))
  "Returns md5sum for a message object of type 'Motors"
  "70b13c5ef9c65dbf694e40488c676596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motors>)))
  "Returns full string definition for message of type '<Motors>"
  (cl:format cl:nil "int16 motor1_pwm~%int16 motor2_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motors)))
  "Returns full string definition for message of type 'Motors"
  (cl:format cl:nil "int16 motor1_pwm~%int16 motor2_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motors>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motors>))
  "Converts a ROS message object to a list"
  (cl:list 'Motors
    (cl:cons ':motor1_pwm (motor1_pwm msg))
    (cl:cons ':motor2_pwm (motor2_pwm msg))
))
