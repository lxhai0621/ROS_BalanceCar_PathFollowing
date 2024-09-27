// Auto-generated. Do not edit!

// (in-package balance_car_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class control_paramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftWheelVelocity = null;
      this.rightWheelVelocity = null;
      this.pitch = null;
      this.yaw = null;
      this.pitchAngVelocity = null;
      this.yawAngVelocity = null;
      this.dst_vel = null;
      this.dst_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('leftWheelVelocity')) {
        this.leftWheelVelocity = initObj.leftWheelVelocity
      }
      else {
        this.leftWheelVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('rightWheelVelocity')) {
        this.rightWheelVelocity = initObj.rightWheelVelocity
      }
      else {
        this.rightWheelVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitchAngVelocity')) {
        this.pitchAngVelocity = initObj.pitchAngVelocity
      }
      else {
        this.pitchAngVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('yawAngVelocity')) {
        this.yawAngVelocity = initObj.yawAngVelocity
      }
      else {
        this.yawAngVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('dst_vel')) {
        this.dst_vel = initObj.dst_vel
      }
      else {
        this.dst_vel = 0.0;
      }
      if (initObj.hasOwnProperty('dst_yaw')) {
        this.dst_yaw = initObj.dst_yaw
      }
      else {
        this.dst_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_paramRequest
    // Serialize message field [leftWheelVelocity]
    bufferOffset = _serializer.float64(obj.leftWheelVelocity, buffer, bufferOffset);
    // Serialize message field [rightWheelVelocity]
    bufferOffset = _serializer.float64(obj.rightWheelVelocity, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitchAngVelocity]
    bufferOffset = _serializer.float64(obj.pitchAngVelocity, buffer, bufferOffset);
    // Serialize message field [yawAngVelocity]
    bufferOffset = _serializer.float64(obj.yawAngVelocity, buffer, bufferOffset);
    // Serialize message field [dst_vel]
    bufferOffset = _serializer.float64(obj.dst_vel, buffer, bufferOffset);
    // Serialize message field [dst_yaw]
    bufferOffset = _serializer.float64(obj.dst_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_paramRequest
    let len;
    let data = new control_paramRequest(null);
    // Deserialize message field [leftWheelVelocity]
    data.leftWheelVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightWheelVelocity]
    data.rightWheelVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitchAngVelocity]
    data.pitchAngVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yawAngVelocity]
    data.yawAngVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dst_vel]
    data.dst_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dst_yaw]
    data.dst_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'balance_car_control/control_paramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '246e71c94ab082441dd57639ad4eb032';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data sensed by sensors
    float64 leftWheelVelocity        
    float64 rightWheelVelocity       
    float64 pitch                    
    float64 yaw                     
    float64 pitchAngVelocity         
    float64 yawAngVelocity           
    # Control messages received by the keyboard control node
    float64 dst_vel                  
    float64 dst_yaw                  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_paramRequest(null);
    if (msg.leftWheelVelocity !== undefined) {
      resolved.leftWheelVelocity = msg.leftWheelVelocity;
    }
    else {
      resolved.leftWheelVelocity = 0.0
    }

    if (msg.rightWheelVelocity !== undefined) {
      resolved.rightWheelVelocity = msg.rightWheelVelocity;
    }
    else {
      resolved.rightWheelVelocity = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitchAngVelocity !== undefined) {
      resolved.pitchAngVelocity = msg.pitchAngVelocity;
    }
    else {
      resolved.pitchAngVelocity = 0.0
    }

    if (msg.yawAngVelocity !== undefined) {
      resolved.yawAngVelocity = msg.yawAngVelocity;
    }
    else {
      resolved.yawAngVelocity = 0.0
    }

    if (msg.dst_vel !== undefined) {
      resolved.dst_vel = msg.dst_vel;
    }
    else {
      resolved.dst_vel = 0.0
    }

    if (msg.dst_yaw !== undefined) {
      resolved.dst_yaw = msg.dst_yaw;
    }
    else {
      resolved.dst_yaw = 0.0
    }

    return resolved;
    }
};

class control_paramResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftTorque = null;
      this.rightTorque = null;
    }
    else {
      if (initObj.hasOwnProperty('leftTorque')) {
        this.leftTorque = initObj.leftTorque
      }
      else {
        this.leftTorque = 0.0;
      }
      if (initObj.hasOwnProperty('rightTorque')) {
        this.rightTorque = initObj.rightTorque
      }
      else {
        this.rightTorque = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_paramResponse
    // Serialize message field [leftTorque]
    bufferOffset = _serializer.float64(obj.leftTorque, buffer, bufferOffset);
    // Serialize message field [rightTorque]
    bufferOffset = _serializer.float64(obj.rightTorque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_paramResponse
    let len;
    let data = new control_paramResponse(null);
    // Deserialize message field [leftTorque]
    data.leftTorque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightTorque]
    data.rightTorque = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'balance_car_control/control_paramResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b727766ecb9b19062370d32e6dbc80b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Control torque of two wheels of balancing car
    float64 leftTorque
    float64 rightTorque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_paramResponse(null);
    if (msg.leftTorque !== undefined) {
      resolved.leftTorque = msg.leftTorque;
    }
    else {
      resolved.leftTorque = 0.0
    }

    if (msg.rightTorque !== undefined) {
      resolved.rightTorque = msg.rightTorque;
    }
    else {
      resolved.rightTorque = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: control_paramRequest,
  Response: control_paramResponse,
  md5sum() { return '0acb029cdb27dd01bf6ea8bf609b687e'; },
  datatype() { return 'balance_car_control/control_param'; }
};
