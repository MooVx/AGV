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

class MotorsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_velocity = null;
      this.angle_limits = null;
      this.Y_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_velocity')) {
        this.goal_velocity = initObj.goal_velocity
      }
      else {
        this.goal_velocity = 0;
      }
      if (initObj.hasOwnProperty('angle_limits')) {
        this.angle_limits = initObj.angle_limits
      }
      else {
        this.angle_limits = 0.0;
      }
      if (initObj.hasOwnProperty('Y_limits')) {
        this.Y_limits = initObj.Y_limits
      }
      else {
        this.Y_limits = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorsGoal
    // Serialize message field [goal_velocity]
    bufferOffset = _serializer.int16(obj.goal_velocity, buffer, bufferOffset);
    // Serialize message field [angle_limits]
    bufferOffset = _serializer.float32(obj.angle_limits, buffer, bufferOffset);
    // Serialize message field [Y_limits]
    bufferOffset = _serializer.float32(obj.Y_limits, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorsGoal
    let len;
    let data = new MotorsGoal(null);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [angle_limits]
    data.angle_limits = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Y_limits]
    data.Y_limits = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steward/MotorsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8d57bb6887a089db071ec31ad56c0e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int16 goal_velocity
    float32 angle_limits
    float32 Y_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorsGoal(null);
    if (msg.goal_velocity !== undefined) {
      resolved.goal_velocity = msg.goal_velocity;
    }
    else {
      resolved.goal_velocity = 0
    }

    if (msg.angle_limits !== undefined) {
      resolved.angle_limits = msg.angle_limits;
    }
    else {
      resolved.angle_limits = 0.0
    }

    if (msg.Y_limits !== undefined) {
      resolved.Y_limits = msg.Y_limits;
    }
    else {
      resolved.Y_limits = 0.0
    }

    return resolved;
    }
};

module.exports = MotorsGoal;
