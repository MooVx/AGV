// Auto-generated. Do not edit!

// (in-package steward.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Motors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor1_pwm = null;
      this.motor2_pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('motor1_pwm')) {
        this.motor1_pwm = initObj.motor1_pwm
      }
      else {
        this.motor1_pwm = 0;
      }
      if (initObj.hasOwnProperty('motor2_pwm')) {
        this.motor2_pwm = initObj.motor2_pwm
      }
      else {
        this.motor2_pwm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motors
    // Serialize message field [motor1_pwm]
    bufferOffset = _serializer.int16(obj.motor1_pwm, buffer, bufferOffset);
    // Serialize message field [motor2_pwm]
    bufferOffset = _serializer.int16(obj.motor2_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motors
    let len;
    let data = new Motors(null);
    // Deserialize message field [motor1_pwm]
    data.motor1_pwm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor2_pwm]
    data.motor2_pwm = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steward/Motors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70b13c5ef9c65dbf694e40488c676596';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motor1_pwm
    int16 motor2_pwm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motors(null);
    if (msg.motor1_pwm !== undefined) {
      resolved.motor1_pwm = msg.motor1_pwm;
    }
    else {
      resolved.motor1_pwm = 0
    }

    if (msg.motor2_pwm !== undefined) {
      resolved.motor2_pwm = msg.motor2_pwm;
    }
    else {
      resolved.motor2_pwm = 0
    }

    return resolved;
    }
};

module.exports = Motors;
