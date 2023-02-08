// Auto-generated. Do not edit!

// (in-package n_words_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class count_wordsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.words = null;
    }
    else {
      if (initObj.hasOwnProperty('words')) {
        this.words = initObj.words
      }
      else {
        this.words = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type count_wordsRequest
    // Serialize message field [words]
    bufferOffset = _serializer.string(obj.words, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type count_wordsRequest
    let len;
    let data = new count_wordsRequest(null);
    // Deserialize message field [words]
    data.words = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.words);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'n_words_pkg/count_wordsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f897d3845272d18053a750c1cfb862a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string words
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new count_wordsRequest(null);
    if (msg.words !== undefined) {
      resolved.words = msg.words;
    }
    else {
      resolved.words = ''
    }

    return resolved;
    }
};

class count_wordsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type count_wordsResponse
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type count_wordsResponse
    let len;
    let data = new count_wordsResponse(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'n_words_pkg/count_wordsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '602d642babe509c7c59f497c23e716a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new count_wordsResponse(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: count_wordsRequest,
  Response: count_wordsResponse,
  md5sum() { return '4dd4fc0aa84b04c0886a72138fb27c19'; },
  datatype() { return 'n_words_pkg/count_words'; }
};
