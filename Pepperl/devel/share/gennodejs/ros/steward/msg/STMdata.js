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

class STMdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dirL = null;
      this.dirR = null;
      this.speedL = null;
      this.speedR = null;
      this.n_cntL = null;
      this.n_cntR = null;
      this.battery_12 = null;
      this.battery_24 = null;
      this.safety_button = null;
      this.field1 = null;
      this.field2 = null;
      this.field3 = null;
      this.field4 = null;
    }
    else {
      if (initObj.hasOwnProperty('dirL')) {
        this.dirL = initObj.dirL
      }
      else {
        this.dirL = false;
      }
      if (initObj.hasOwnProperty('dirR')) {
        this.dirR = initObj.dirR
      }
      else {
        this.dirR = false;
      }
      if (initObj.hasOwnProperty('speedL')) {
        this.speedL = initObj.speedL
      }
      else {
        this.speedL = 0;
      }
      if (initObj.hasOwnProperty('speedR')) {
        this.speedR = initObj.speedR
      }
      else {
        this.speedR = 0;
      }
      if (initObj.hasOwnProperty('n_cntL')) {
        this.n_cntL = initObj.n_cntL
      }
      else {
        this.n_cntL = 0;
      }
      if (initObj.hasOwnProperty('n_cntR')) {
        this.n_cntR = initObj.n_cntR
      }
      else {
        this.n_cntR = 0;
      }
      if (initObj.hasOwnProperty('battery_12')) {
        this.battery_12 = initObj.battery_12
      }
      else {
        this.battery_12 = 0;
      }
      if (initObj.hasOwnProperty('battery_24')) {
        this.battery_24 = initObj.battery_24
      }
      else {
        this.battery_24 = 0;
      }
      if (initObj.hasOwnProperty('safety_button')) {
        this.safety_button = initObj.safety_button
      }
      else {
        this.safety_button = false;
      }
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = false;
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = false;
      }
      if (initObj.hasOwnProperty('field3')) {
        this.field3 = initObj.field3
      }
      else {
        this.field3 = false;
      }
      if (initObj.hasOwnProperty('field4')) {
        this.field4 = initObj.field4
      }
      else {
        this.field4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type STMdata
    // Serialize message field [dirL]
    bufferOffset = _serializer.bool(obj.dirL, buffer, bufferOffset);
    // Serialize message field [dirR]
    bufferOffset = _serializer.bool(obj.dirR, buffer, bufferOffset);
    // Serialize message field [speedL]
    bufferOffset = _serializer.int16(obj.speedL, buffer, bufferOffset);
    // Serialize message field [speedR]
    bufferOffset = _serializer.int16(obj.speedR, buffer, bufferOffset);
    // Serialize message field [n_cntL]
    bufferOffset = _serializer.int16(obj.n_cntL, buffer, bufferOffset);
    // Serialize message field [n_cntR]
    bufferOffset = _serializer.int16(obj.n_cntR, buffer, bufferOffset);
    // Serialize message field [battery_12]
    bufferOffset = _serializer.int16(obj.battery_12, buffer, bufferOffset);
    // Serialize message field [battery_24]
    bufferOffset = _serializer.int16(obj.battery_24, buffer, bufferOffset);
    // Serialize message field [safety_button]
    bufferOffset = _serializer.bool(obj.safety_button, buffer, bufferOffset);
    // Serialize message field [field1]
    bufferOffset = _serializer.bool(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = _serializer.bool(obj.field2, buffer, bufferOffset);
    // Serialize message field [field3]
    bufferOffset = _serializer.bool(obj.field3, buffer, bufferOffset);
    // Serialize message field [field4]
    bufferOffset = _serializer.bool(obj.field4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type STMdata
    let len;
    let data = new STMdata(null);
    // Deserialize message field [dirL]
    data.dirL = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dirR]
    data.dirR = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speedL]
    data.speedL = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speedR]
    data.speedR = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [n_cntL]
    data.n_cntL = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [n_cntR]
    data.n_cntR = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_12]
    data.battery_12 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_24]
    data.battery_24 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [safety_button]
    data.safety_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [field1]
    data.field1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [field3]
    data.field3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [field4]
    data.field4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steward/STMdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f54db2db462926e76b4023cd830b792';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool dirL
    bool dirR
    int16 speedL
    int16 speedR
    int16 n_cntL
    int16 n_cntR
    int16 battery_12
    int16 battery_24
    bool safety_button
    bool field1
    bool field2
    bool field3
    bool field4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new STMdata(null);
    if (msg.dirL !== undefined) {
      resolved.dirL = msg.dirL;
    }
    else {
      resolved.dirL = false
    }

    if (msg.dirR !== undefined) {
      resolved.dirR = msg.dirR;
    }
    else {
      resolved.dirR = false
    }

    if (msg.speedL !== undefined) {
      resolved.speedL = msg.speedL;
    }
    else {
      resolved.speedL = 0
    }

    if (msg.speedR !== undefined) {
      resolved.speedR = msg.speedR;
    }
    else {
      resolved.speedR = 0
    }

    if (msg.n_cntL !== undefined) {
      resolved.n_cntL = msg.n_cntL;
    }
    else {
      resolved.n_cntL = 0
    }

    if (msg.n_cntR !== undefined) {
      resolved.n_cntR = msg.n_cntR;
    }
    else {
      resolved.n_cntR = 0
    }

    if (msg.battery_12 !== undefined) {
      resolved.battery_12 = msg.battery_12;
    }
    else {
      resolved.battery_12 = 0
    }

    if (msg.battery_24 !== undefined) {
      resolved.battery_24 = msg.battery_24;
    }
    else {
      resolved.battery_24 = 0
    }

    if (msg.safety_button !== undefined) {
      resolved.safety_button = msg.safety_button;
    }
    else {
      resolved.safety_button = false
    }

    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = false
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = msg.field2;
    }
    else {
      resolved.field2 = false
    }

    if (msg.field3 !== undefined) {
      resolved.field3 = msg.field3;
    }
    else {
      resolved.field3 = false
    }

    if (msg.field4 !== undefined) {
      resolved.field4 = msg.field4;
    }
    else {
      resolved.field4 = false
    }

    return resolved;
    }
};

module.exports = STMdata;
