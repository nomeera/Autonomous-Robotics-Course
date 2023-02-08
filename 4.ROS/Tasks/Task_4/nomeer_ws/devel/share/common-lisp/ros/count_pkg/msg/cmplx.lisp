; Auto-generated. Do not edit!


(cl:in-package count_pkg-msg)


;//! \htmlinclude cmplx.msg.html

(cl:defclass <cmplx> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type cl:float
    :initform 0.0)
   (imaginary
    :reader imaginary
    :initarg :imaginary
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmplx (<cmplx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmplx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmplx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name count_pkg-msg:<cmplx> is deprecated: use count_pkg-msg:cmplx instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <cmplx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count_pkg-msg:real-val is deprecated.  Use count_pkg-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imaginary-val :lambda-list '(m))
(cl:defmethod imaginary-val ((m <cmplx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count_pkg-msg:imaginary-val is deprecated.  Use count_pkg-msg:imaginary instead.")
  (imaginary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmplx>) ostream)
  "Serializes a message object of type '<cmplx>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'imaginary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmplx>) istream)
  "Deserializes a message object of type '<cmplx>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imaginary) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmplx>)))
  "Returns string type for a message object of type '<cmplx>"
  "count_pkg/cmplx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmplx)))
  "Returns string type for a message object of type 'cmplx"
  "count_pkg/cmplx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmplx>)))
  "Returns md5sum for a message object of type '<cmplx>"
  "f79948d85872c3174fd7b3b73c94ede5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmplx)))
  "Returns md5sum for a message object of type 'cmplx"
  "f79948d85872c3174fd7b3b73c94ede5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmplx>)))
  "Returns full string definition for message of type '<cmplx>"
  (cl:format cl:nil "float64 real~%float64 imaginary~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmplx)))
  "Returns full string definition for message of type 'cmplx"
  (cl:format cl:nil "float64 real~%float64 imaginary~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmplx>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmplx>))
  "Converts a ROS message object to a list"
  (cl:list 'cmplx
    (cl:cons ':real (real msg))
    (cl:cons ':imaginary (imaginary msg))
))
