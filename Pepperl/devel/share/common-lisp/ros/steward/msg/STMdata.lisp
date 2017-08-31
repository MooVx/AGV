; Auto-generated. Do not edit!


(cl:in-package steward-msg)


;//! \htmlinclude STMdata.msg.html

(cl:defclass <STMdata> (roslisp-msg-protocol:ros-message)
  ((dirL
    :reader dirL
    :initarg :dirL
    :type cl:boolean
    :initform cl:nil)
   (dirR
    :reader dirR
    :initarg :dirR
    :type cl:boolean
    :initform cl:nil)
   (speedL
    :reader speedL
    :initarg :speedL
    :type cl:fixnum
    :initform 0)
   (speedR
    :reader speedR
    :initarg :speedR
    :type cl:fixnum
    :initform 0)
   (n_cntL
    :reader n_cntL
    :initarg :n_cntL
    :type cl:fixnum
    :initform 0)
   (n_cntR
    :reader n_cntR
    :initarg :n_cntR
    :type cl:fixnum
    :initform 0)
   (battery_12
    :reader battery_12
    :initarg :battery_12
    :type cl:fixnum
    :initform 0)
   (battery_24
    :reader battery_24
    :initarg :battery_24
    :type cl:fixnum
    :initform 0)
   (safety_button
    :reader safety_button
    :initarg :safety_button
    :type cl:boolean
    :initform cl:nil)
   (field1
    :reader field1
    :initarg :field1
    :type cl:boolean
    :initform cl:nil)
   (field2
    :reader field2
    :initarg :field2
    :type cl:boolean
    :initform cl:nil)
   (field3
    :reader field3
    :initarg :field3
    :type cl:boolean
    :initform cl:nil)
   (field4
    :reader field4
    :initarg :field4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass STMdata (<STMdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <STMdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'STMdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steward-msg:<STMdata> is deprecated: use steward-msg:STMdata instead.")))

(cl:ensure-generic-function 'dirL-val :lambda-list '(m))
(cl:defmethod dirL-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:dirL-val is deprecated.  Use steward-msg:dirL instead.")
  (dirL m))

(cl:ensure-generic-function 'dirR-val :lambda-list '(m))
(cl:defmethod dirR-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:dirR-val is deprecated.  Use steward-msg:dirR instead.")
  (dirR m))

(cl:ensure-generic-function 'speedL-val :lambda-list '(m))
(cl:defmethod speedL-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:speedL-val is deprecated.  Use steward-msg:speedL instead.")
  (speedL m))

(cl:ensure-generic-function 'speedR-val :lambda-list '(m))
(cl:defmethod speedR-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:speedR-val is deprecated.  Use steward-msg:speedR instead.")
  (speedR m))

(cl:ensure-generic-function 'n_cntL-val :lambda-list '(m))
(cl:defmethod n_cntL-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:n_cntL-val is deprecated.  Use steward-msg:n_cntL instead.")
  (n_cntL m))

(cl:ensure-generic-function 'n_cntR-val :lambda-list '(m))
(cl:defmethod n_cntR-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:n_cntR-val is deprecated.  Use steward-msg:n_cntR instead.")
  (n_cntR m))

(cl:ensure-generic-function 'battery_12-val :lambda-list '(m))
(cl:defmethod battery_12-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:battery_12-val is deprecated.  Use steward-msg:battery_12 instead.")
  (battery_12 m))

(cl:ensure-generic-function 'battery_24-val :lambda-list '(m))
(cl:defmethod battery_24-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:battery_24-val is deprecated.  Use steward-msg:battery_24 instead.")
  (battery_24 m))

(cl:ensure-generic-function 'safety_button-val :lambda-list '(m))
(cl:defmethod safety_button-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:safety_button-val is deprecated.  Use steward-msg:safety_button instead.")
  (safety_button m))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:field1-val is deprecated.  Use steward-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:field2-val is deprecated.  Use steward-msg:field2 instead.")
  (field2 m))

(cl:ensure-generic-function 'field3-val :lambda-list '(m))
(cl:defmethod field3-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:field3-val is deprecated.  Use steward-msg:field3 instead.")
  (field3 m))

(cl:ensure-generic-function 'field4-val :lambda-list '(m))
(cl:defmethod field4-val ((m <STMdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:field4-val is deprecated.  Use steward-msg:field4 instead.")
  (field4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <STMdata>) ostream)
  "Serializes a message object of type '<STMdata>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dirL) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dirR) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'speedL)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speedR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n_cntL)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n_cntR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_12)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_24)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'safety_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'field1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'field2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'field3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'field4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <STMdata>) istream)
  "Deserializes a message object of type '<STMdata>"
    (cl:setf (cl:slot-value msg 'dirL) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dirR) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speedL) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speedR) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_cntL) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_cntR) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_12) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_24) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'safety_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'field1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'field2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'field3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'field4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<STMdata>)))
  "Returns string type for a message object of type '<STMdata>"
  "steward/STMdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STMdata)))
  "Returns string type for a message object of type 'STMdata"
  "steward/STMdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<STMdata>)))
  "Returns md5sum for a message object of type '<STMdata>"
  "2f54db2db462926e76b4023cd830b792")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'STMdata)))
  "Returns md5sum for a message object of type 'STMdata"
  "2f54db2db462926e76b4023cd830b792")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<STMdata>)))
  "Returns full string definition for message of type '<STMdata>"
  (cl:format cl:nil "bool dirL~%bool dirR~%int16 speedL~%int16 speedR~%int16 n_cntL~%int16 n_cntR~%int16 battery_12~%int16 battery_24~%bool safety_button~%bool field1~%bool field2~%bool field3~%bool field4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'STMdata)))
  "Returns full string definition for message of type 'STMdata"
  (cl:format cl:nil "bool dirL~%bool dirR~%int16 speedL~%int16 speedR~%int16 n_cntL~%int16 n_cntR~%int16 battery_12~%int16 battery_24~%bool safety_button~%bool field1~%bool field2~%bool field3~%bool field4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <STMdata>))
  (cl:+ 0
     1
     1
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <STMdata>))
  "Converts a ROS message object to a list"
  (cl:list 'STMdata
    (cl:cons ':dirL (dirL msg))
    (cl:cons ':dirR (dirR msg))
    (cl:cons ':speedL (speedL msg))
    (cl:cons ':speedR (speedR msg))
    (cl:cons ':n_cntL (n_cntL msg))
    (cl:cons ':n_cntR (n_cntR msg))
    (cl:cons ':battery_12 (battery_12 msg))
    (cl:cons ':battery_24 (battery_24 msg))
    (cl:cons ':safety_button (safety_button msg))
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
    (cl:cons ':field3 (field3 msg))
    (cl:cons ':field4 (field4 msg))
))
