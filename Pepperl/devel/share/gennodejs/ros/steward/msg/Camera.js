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

class Camera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lanes = null;
      this.angle = null;
      this.dir = null;
      this.any_line = null;
      this.pos_y = null;
    }
    else {
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = '';
      }
      if (initObj.hasOwnProperty('any_line')) {
        this.any_line = initObj.any_line
      }
      else {
        this.any_line = false;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Camera
    // Serialize message field [lanes]
    bufferOffset = _serializer.int8(obj.lanes, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.string(obj.dir, buffer, bufferOffset);
    // Serialize message field [any_line]
    bufferOffset = _serializer.bool(obj.any_line, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float32(obj.pos_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Camera
    let len;
    let data = new Camera(null);
    // Deserialize message field [lanes]
    data.lanes = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [any_line]
    data.any_line = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dir.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steward/Camera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7955391981ec33d82887b36a30719f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 lanes
    float32 angle
    string dir
    bool any_line
    float32 pos_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Camera(null);
    if (msg.lanes !== undefined) {
      resolved.lanes = msg.lanes;
    }
    else {
      resolved.lanes = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = ''
    }

    if (msg.any_line !== undefined) {
      resolved.any_line = msg.any_line;
    }
    else {
      resolved.any_line = false
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    return resolved;
    }
};

module.exports = Camera;
