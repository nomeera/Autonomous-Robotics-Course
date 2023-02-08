// Auto-generated. Do not edit!

// (in-package cmplx_num_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cmplx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real = null;
      this.imaginary = null;
    }
    else {
      if (initObj.hasOwnProperty('real')) {
        this.real = initObj.real
      }
      else {
        this.real = 0.0;
      }
      if (initObj.hasOwnProperty('imaginary')) {
        this.imaginary = initObj.imaginary
      }
      else {
        this.imaginary = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cmplx
    // Serialize message field [real]
    bufferOffset = _serializer.float64(obj.real, buffer, bufferOffset);
    // Serialize message field [imaginary]
    bufferOffset = _serializer.float64(obj.imaginary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cmplx
    let len;
    let data = new cmplx(null);
    // Deserialize message field [real]
    data.real = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imaginary]
    data.imaginary = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cmplx_num_pkg/cmplx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f79948d85872c3174fd7b3b73c94ede5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 real
    float64 imaginary
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cmplx(null);
    if (msg.real !== undefined) {
      resolved.real = msg.real;
    }
    else {
      resolved.real = 0.0
    }

    if (msg.imaginary !== undefined) {
      resolved.imaginary = msg.imaginary;
    }
    else {
      resolved.imaginary = 0.0
    }

    return resolved;
    }
};

module.exports = cmplx;
