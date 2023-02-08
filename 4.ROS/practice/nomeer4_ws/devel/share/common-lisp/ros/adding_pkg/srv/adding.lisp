; Auto-generated. Do not edit!


(cl:in-package adding_pkg-srv)


;//! \htmlinclude adding-request.msg.html

(cl:defclass <adding-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass adding-request (<adding-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adding-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adding-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adding_pkg-srv:<adding-request> is deprecated: use adding_pkg-srv:adding-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <adding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_pkg-srv:x-val is deprecated.  Use adding_pkg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <adding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_pkg-srv:y-val is deprecated.  Use adding_pkg-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adding-request>) ostream)
  "Serializes a message object of type '<adding-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adding-request>) istream)
  "Deserializes a message object of type '<adding-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adding-request>)))
  "Returns string type for a service object of type '<adding-request>"
  "adding_pkg/addingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adding-request)))
  "Returns string type for a service object of type 'adding-request"
  "adding_pkg/addingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adding-request>)))
  "Returns md5sum for a message object of type '<adding-request>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adding-request)))
  "Returns md5sum for a message object of type 'adding-request"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adding-request>)))
  "Returns full string definition for message of type '<adding-request>"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adding-request)))
  "Returns full string definition for message of type 'adding-request"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adding-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adding-request>))
  "Converts a ROS message object to a list"
  (cl:list 'adding-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude adding-response.msg.html

(cl:defclass <adding-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass adding-response (<adding-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adding-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adding-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adding_pkg-srv:<adding-response> is deprecated: use adding_pkg-srv:adding-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <adding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_pkg-srv:sum-val is deprecated.  Use adding_pkg-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adding-response>) ostream)
  "Serializes a message object of type '<adding-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adding-response>) istream)
  "Deserializes a message object of type '<adding-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adding-response>)))
  "Returns string type for a service object of type '<adding-response>"
  "adding_pkg/addingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adding-response)))
  "Returns string type for a service object of type 'adding-response"
  "adding_pkg/addingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adding-response>)))
  "Returns md5sum for a message object of type '<adding-response>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adding-response)))
  "Returns md5sum for a message object of type 'adding-response"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adding-response>)))
  "Returns full string definition for message of type '<adding-response>"
  (cl:format cl:nil "~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adding-response)))
  "Returns full string definition for message of type 'adding-response"
  (cl:format cl:nil "~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adding-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adding-response>))
  "Converts a ROS message object to a list"
  (cl:list 'adding-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'adding)))
  'adding-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'adding)))
  'adding-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adding)))
  "Returns string type for a service object of type '<adding>"
  "adding_pkg/adding")