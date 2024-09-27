;; Auto-generated. Do not edit!


(when (boundp 'balance_car_control::control_param)
  (if (not (find-package "BALANCE_CAR_CONTROL"))
    (make-package "BALANCE_CAR_CONTROL"))
  (shadow 'control_param (find-package "BALANCE_CAR_CONTROL")))
(unless (find-package "BALANCE_CAR_CONTROL::CONTROL_PARAM")
  (make-package "BALANCE_CAR_CONTROL::CONTROL_PARAM"))
(unless (find-package "BALANCE_CAR_CONTROL::CONTROL_PARAMREQUEST")
  (make-package "BALANCE_CAR_CONTROL::CONTROL_PARAMREQUEST"))
(unless (find-package "BALANCE_CAR_CONTROL::CONTROL_PARAMRESPONSE")
  (make-package "BALANCE_CAR_CONTROL::CONTROL_PARAMRESPONSE"))

(in-package "ROS")





(defclass balance_car_control::control_paramRequest
  :super ros::object
  :slots (_leftWheelVelocity _rightWheelVelocity _pitch _yaw _pitchAngVelocity _yawAngVelocity _dst_vel _dst_yaw ))

(defmethod balance_car_control::control_paramRequest
  (:init
   (&key
    ((:leftWheelVelocity __leftWheelVelocity) 0.0)
    ((:rightWheelVelocity __rightWheelVelocity) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitchAngVelocity __pitchAngVelocity) 0.0)
    ((:yawAngVelocity __yawAngVelocity) 0.0)
    ((:dst_vel __dst_vel) 0.0)
    ((:dst_yaw __dst_yaw) 0.0)
    )
   (send-super :init)
   (setq _leftWheelVelocity (float __leftWheelVelocity))
   (setq _rightWheelVelocity (float __rightWheelVelocity))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _pitchAngVelocity (float __pitchAngVelocity))
   (setq _yawAngVelocity (float __yawAngVelocity))
   (setq _dst_vel (float __dst_vel))
   (setq _dst_yaw (float __dst_yaw))
   self)
  (:leftWheelVelocity
   (&optional __leftWheelVelocity)
   (if __leftWheelVelocity (setq _leftWheelVelocity __leftWheelVelocity)) _leftWheelVelocity)
  (:rightWheelVelocity
   (&optional __rightWheelVelocity)
   (if __rightWheelVelocity (setq _rightWheelVelocity __rightWheelVelocity)) _rightWheelVelocity)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitchAngVelocity
   (&optional __pitchAngVelocity)
   (if __pitchAngVelocity (setq _pitchAngVelocity __pitchAngVelocity)) _pitchAngVelocity)
  (:yawAngVelocity
   (&optional __yawAngVelocity)
   (if __yawAngVelocity (setq _yawAngVelocity __yawAngVelocity)) _yawAngVelocity)
  (:dst_vel
   (&optional __dst_vel)
   (if __dst_vel (setq _dst_vel __dst_vel)) _dst_vel)
  (:dst_yaw
   (&optional __dst_yaw)
   (if __dst_yaw (setq _dst_yaw __dst_yaw)) _dst_yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _leftWheelVelocity
    8
    ;; float64 _rightWheelVelocity
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _pitchAngVelocity
    8
    ;; float64 _yawAngVelocity
    8
    ;; float64 _dst_vel
    8
    ;; float64 _dst_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _leftWheelVelocity
       (sys::poke _leftWheelVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightWheelVelocity
       (sys::poke _rightWheelVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitchAngVelocity
       (sys::poke _pitchAngVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yawAngVelocity
       (sys::poke _yawAngVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dst_vel
       (sys::poke _dst_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dst_yaw
       (sys::poke _dst_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _leftWheelVelocity
     (setq _leftWheelVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightWheelVelocity
     (setq _rightWheelVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitchAngVelocity
     (setq _pitchAngVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yawAngVelocity
     (setq _yawAngVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dst_vel
     (setq _dst_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dst_yaw
     (setq _dst_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass balance_car_control::control_paramResponse
  :super ros::object
  :slots (_leftTorque _rightTorque ))

(defmethod balance_car_control::control_paramResponse
  (:init
   (&key
    ((:leftTorque __leftTorque) 0.0)
    ((:rightTorque __rightTorque) 0.0)
    )
   (send-super :init)
   (setq _leftTorque (float __leftTorque))
   (setq _rightTorque (float __rightTorque))
   self)
  (:leftTorque
   (&optional __leftTorque)
   (if __leftTorque (setq _leftTorque __leftTorque)) _leftTorque)
  (:rightTorque
   (&optional __rightTorque)
   (if __rightTorque (setq _rightTorque __rightTorque)) _rightTorque)
  (:serialization-length
   ()
   (+
    ;; float64 _leftTorque
    8
    ;; float64 _rightTorque
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _leftTorque
       (sys::poke _leftTorque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightTorque
       (sys::poke _rightTorque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _leftTorque
     (setq _leftTorque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightTorque
     (setq _rightTorque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass balance_car_control::control_param
  :super ros::object
  :slots ())

(setf (get balance_car_control::control_param :md5sum-) "0acb029cdb27dd01bf6ea8bf609b687e")
(setf (get balance_car_control::control_param :datatype-) "balance_car_control/control_param")
(setf (get balance_car_control::control_param :request) balance_car_control::control_paramRequest)
(setf (get balance_car_control::control_param :response) balance_car_control::control_paramResponse)

(defmethod balance_car_control::control_paramRequest
  (:response () (instance balance_car_control::control_paramResponse :init)))

(setf (get balance_car_control::control_paramRequest :md5sum-) "0acb029cdb27dd01bf6ea8bf609b687e")
(setf (get balance_car_control::control_paramRequest :datatype-) "balance_car_control/control_paramRequest")
(setf (get balance_car_control::control_paramRequest :definition-)
      "# Data sensed by sensors
float64 leftWheelVelocity        
float64 rightWheelVelocity       
float64 pitch                    
float64 yaw                     
float64 pitchAngVelocity         
float64 yawAngVelocity           
# Control messages received by the keyboard control node
float64 dst_vel                  
float64 dst_yaw                  
---
# Control torque of two wheels of balancing car
float64 leftTorque
float64 rightTorque
")

(setf (get balance_car_control::control_paramResponse :md5sum-) "0acb029cdb27dd01bf6ea8bf609b687e")
(setf (get balance_car_control::control_paramResponse :datatype-) "balance_car_control/control_paramResponse")
(setf (get balance_car_control::control_paramResponse :definition-)
      "# Data sensed by sensors
float64 leftWheelVelocity        
float64 rightWheelVelocity       
float64 pitch                    
float64 yaw                     
float64 pitchAngVelocity         
float64 yawAngVelocity           
# Control messages received by the keyboard control node
float64 dst_vel                  
float64 dst_yaw                  
---
# Control torque of two wheels of balancing car
float64 leftTorque
float64 rightTorque
")



(provide :balance_car_control/control_param "0acb029cdb27dd01bf6ea8bf609b687e")


