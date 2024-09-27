; Auto-generated. Do not edit!


(cl:in-package balance_car_control-srv)


;//! \htmlinclude control_param-request.msg.html

(cl:defclass <control_param-request> (roslisp-msg-protocol:ros-message)
  ((leftWheelVelocity
    :reader leftWheelVelocity
    :initarg :leftWheelVelocity
    :type cl:float
    :initform 0.0)
   (rightWheelVelocity
    :reader rightWheelVelocity
    :initarg :rightWheelVelocity
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitchAngVelocity
    :reader pitchAngVelocity
    :initarg :pitchAngVelocity
    :type cl:float
    :initform 0.0)
   (yawAngVelocity
    :reader yawAngVelocity
    :initarg :yawAngVelocity
    :type cl:float
    :initform 0.0)
   (dst_vel
    :reader dst_vel
    :initarg :dst_vel
    :type cl:float
    :initform 0.0)
   (dst_yaw
    :reader dst_yaw
    :initarg :dst_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass control_param-request (<control_param-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_param-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_param-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name balance_car_control-srv:<control_param-request> is deprecated: use balance_car_control-srv:control_param-request instead.")))

(cl:ensure-generic-function 'leftWheelVelocity-val :lambda-list '(m))
(cl:defmethod leftWheelVelocity-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:leftWheelVelocity-val is deprecated.  Use balance_car_control-srv:leftWheelVelocity instead.")
  (leftWheelVelocity m))

(cl:ensure-generic-function 'rightWheelVelocity-val :lambda-list '(m))
(cl:defmethod rightWheelVelocity-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:rightWheelVelocity-val is deprecated.  Use balance_car_control-srv:rightWheelVelocity instead.")
  (rightWheelVelocity m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:pitch-val is deprecated.  Use balance_car_control-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:yaw-val is deprecated.  Use balance_car_control-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitchAngVelocity-val :lambda-list '(m))
(cl:defmethod pitchAngVelocity-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:pitchAngVelocity-val is deprecated.  Use balance_car_control-srv:pitchAngVelocity instead.")
  (pitchAngVelocity m))

(cl:ensure-generic-function 'yawAngVelocity-val :lambda-list '(m))
(cl:defmethod yawAngVelocity-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:yawAngVelocity-val is deprecated.  Use balance_car_control-srv:yawAngVelocity instead.")
  (yawAngVelocity m))

(cl:ensure-generic-function 'dst_vel-val :lambda-list '(m))
(cl:defmethod dst_vel-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:dst_vel-val is deprecated.  Use balance_car_control-srv:dst_vel instead.")
  (dst_vel m))

(cl:ensure-generic-function 'dst_yaw-val :lambda-list '(m))
(cl:defmethod dst_yaw-val ((m <control_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:dst_yaw-val is deprecated.  Use balance_car_control-srv:dst_yaw instead.")
  (dst_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_param-request>) ostream)
  "Serializes a message object of type '<control_param-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftWheelVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightWheelVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitchAngVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yawAngVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dst_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dst_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_param-request>) istream)
  "Deserializes a message object of type '<control_param-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftWheelVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightWheelVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitchAngVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawAngVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dst_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dst_yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_param-request>)))
  "Returns string type for a service object of type '<control_param-request>"
  "balance_car_control/control_paramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_param-request)))
  "Returns string type for a service object of type 'control_param-request"
  "balance_car_control/control_paramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_param-request>)))
  "Returns md5sum for a message object of type '<control_param-request>"
  "0acb029cdb27dd01bf6ea8bf609b687e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_param-request)))
  "Returns md5sum for a message object of type 'control_param-request"
  "0acb029cdb27dd01bf6ea8bf609b687e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_param-request>)))
  "Returns full string definition for message of type '<control_param-request>"
  (cl:format cl:nil "# Data sensed by sensors~%float64 leftWheelVelocity        ~%float64 rightWheelVelocity       ~%float64 pitch                    ~%float64 yaw                     ~%float64 pitchAngVelocity         ~%float64 yawAngVelocity           ~%# Control messages received by the keyboard control node~%float64 dst_vel                  ~%float64 dst_yaw                  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_param-request)))
  "Returns full string definition for message of type 'control_param-request"
  (cl:format cl:nil "# Data sensed by sensors~%float64 leftWheelVelocity        ~%float64 rightWheelVelocity       ~%float64 pitch                    ~%float64 yaw                     ~%float64 pitchAngVelocity         ~%float64 yawAngVelocity           ~%# Control messages received by the keyboard control node~%float64 dst_vel                  ~%float64 dst_yaw                  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_param-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_param-request>))
  "Converts a ROS message object to a list"
  (cl:list 'control_param-request
    (cl:cons ':leftWheelVelocity (leftWheelVelocity msg))
    (cl:cons ':rightWheelVelocity (rightWheelVelocity msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitchAngVelocity (pitchAngVelocity msg))
    (cl:cons ':yawAngVelocity (yawAngVelocity msg))
    (cl:cons ':dst_vel (dst_vel msg))
    (cl:cons ':dst_yaw (dst_yaw msg))
))
;//! \htmlinclude control_param-response.msg.html

(cl:defclass <control_param-response> (roslisp-msg-protocol:ros-message)
  ((leftTorque
    :reader leftTorque
    :initarg :leftTorque
    :type cl:float
    :initform 0.0)
   (rightTorque
    :reader rightTorque
    :initarg :rightTorque
    :type cl:float
    :initform 0.0))
)

(cl:defclass control_param-response (<control_param-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_param-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_param-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name balance_car_control-srv:<control_param-response> is deprecated: use balance_car_control-srv:control_param-response instead.")))

(cl:ensure-generic-function 'leftTorque-val :lambda-list '(m))
(cl:defmethod leftTorque-val ((m <control_param-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:leftTorque-val is deprecated.  Use balance_car_control-srv:leftTorque instead.")
  (leftTorque m))

(cl:ensure-generic-function 'rightTorque-val :lambda-list '(m))
(cl:defmethod rightTorque-val ((m <control_param-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance_car_control-srv:rightTorque-val is deprecated.  Use balance_car_control-srv:rightTorque instead.")
  (rightTorque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_param-response>) ostream)
  "Serializes a message object of type '<control_param-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_param-response>) istream)
  "Deserializes a message object of type '<control_param-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftTorque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightTorque) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_param-response>)))
  "Returns string type for a service object of type '<control_param-response>"
  "balance_car_control/control_paramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_param-response)))
  "Returns string type for a service object of type 'control_param-response"
  "balance_car_control/control_paramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_param-response>)))
  "Returns md5sum for a message object of type '<control_param-response>"
  "0acb029cdb27dd01bf6ea8bf609b687e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_param-response)))
  "Returns md5sum for a message object of type 'control_param-response"
  "0acb029cdb27dd01bf6ea8bf609b687e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_param-response>)))
  "Returns full string definition for message of type '<control_param-response>"
  (cl:format cl:nil "# Control torque of two wheels of balancing car~%float64 leftTorque~%float64 rightTorque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_param-response)))
  "Returns full string definition for message of type 'control_param-response"
  (cl:format cl:nil "# Control torque of two wheels of balancing car~%float64 leftTorque~%float64 rightTorque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_param-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_param-response>))
  "Converts a ROS message object to a list"
  (cl:list 'control_param-response
    (cl:cons ':leftTorque (leftTorque msg))
    (cl:cons ':rightTorque (rightTorque msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'control_param)))
  'control_param-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'control_param)))
  'control_param-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_param)))
  "Returns string type for a service object of type '<control_param>"
  "balance_car_control/control_param")