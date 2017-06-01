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

class MotorsResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_velocity = null;
      this.final_angle = null;
      this.final_Y = null;
    }
    else {
      if (initObj.hasOwnProperty('final_velocity')) {
        this.final_velocity = initObj.final_velocity
      }
      else {
        this.final_velocity = 0;
      }
      if (initObj.hasOwnProperty('final_angle')) {
        this.final_angle = initObj.final_angle
      }
      else {
        this.final_angle = 0.0;
      }
      if (initObj.hasOwnProperty('final_Y')) {
        this.final_Y = initObj.final_Y
      }
      else {
        this.final_Y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorsResult
    // Serialize message field [final_velocity]
    bufferOffset = _serializer.int16(obj.final_velocity, buffer, bufferOffset);
    // Serialize message field [final_angle]
    bufferOffset = _serializer.float32(obj.final_angle, buffer, bufferOffset);
    // Serialize message field [final_Y]
    bufferOffset = _serializer.float32(obj.final_Y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorsResult
    let len;
    let data = new MotorsResult(null);
    // Deserialize message field [final_velocity]
    data.final_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [final_angle]
    data.final_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [final_Y]
    data.final_Y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steward/MotorsResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '016f502c77a87052898c214a72532802';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int16 final_velocity
    float32 final_angle
    float32 final_Y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorsResult(null);
    if (msg.final_velocity !== undefined) {
      resolved.final_velocity = msg.final_velocity;
    }
    else {
      resolved.final_velocity = 0
    }

    if (msg.final_angle !== undefined) {
      resolved.final_angle = msg.final_angle;
    }
    else {
      resolved.final_angle = 0.0
    }

    if (msg.final_Y !== undefined) {
      resolved.final_Y = msg.final_Y;
    }
    else {
      resolved.final_Y = 0.0
    }

    return resolved;
    }
};

module.exports = MotorsResult;