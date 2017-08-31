; Auto-generated. Do not edit!


(cl:in-package steward-msg)


;//! \htmlinclude Camera.msg.html

(cl:defclass <Camera> (roslisp-msg-protocol:ros-message)
  ((lanes
    :reader lanes
    :initarg :lanes
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:string
    :initform "")
   (any_line
    :reader any_line
    :initarg :any_line
    :type cl:boolean
    :initform cl:nil)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Camera (<Camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steward-msg:<Camera> is deprecated: use steward-msg:Camera instead.")))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:lanes-val is deprecated.  Use steward-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:angle-val is deprecated.  Use steward-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <Camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:dir-val is deprecated.  Use steward-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'any_line-val :lambda-list '(m))
(cl:defmethod any_line-val ((m <Camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:any_line-val is deprecated.  Use steward-msg:any_line instead.")
  (any_line m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <Camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steward-msg:pos_y-val is deprecated.  Use steward-msg:pos_y instead.")
  (pos_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Camera>) ostream)
  "Serializes a message object of type '<Camera>"
  (cl:let* ((signed (cl:slot-value msg 'lanes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'any_line) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Camera>) istream)
  "Deserializes a message object of type '<Camera>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lanes) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'any_line) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Camera>)))
  "Returns string type for a message object of type '<Camera>"
  "steward/Camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Camera)))
  "Returns string type for a message object of type 'Camera"
  "steward/Camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Camera>)))
  "Returns md5sum for a message object of type '<Camera>"
  "d7955391981ec33d82887b36a30719f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Camera)))
  "Returns md5sum for a message object of type 'Camera"
  "d7955391981ec33d82887b36a30719f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Camera>)))
  "Returns full string definition for message of type '<Camera>"
  (cl:format cl:nil "int8 lanes~%float32 angle~%string dir~%bool any_line~%float32 pos_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Camera)))
  "Returns full string definition for message of type 'Camera"
  (cl:format cl:nil "int8 lanes~%float32 angle~%string dir~%bool any_line~%float32 pos_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Camera>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'dir))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Camera>))
  "Converts a ROS message object to a list"
  (cl:list 'Camera
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':any_line (any_line msg))
    (cl:cons ':pos_y (pos_y msg))
))
