# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from steward/Camera.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Camera(genpy.Message):
  _md5sum = "d7955391981ec33d82887b36a30719f2"
  _type = "steward/Camera"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 lanes
float32 angle
string dir
bool any_line
float32 pos_y"""
  __slots__ = ['lanes','angle','dir','any_line','pos_y']
  _slot_types = ['int8','float32','string','bool','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lanes,angle,dir,any_line,pos_y

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Camera, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.lanes is None:
        self.lanes = 0
      if self.angle is None:
        self.angle = 0.
      if self.dir is None:
        self.dir = ''
      if self.any_line is None:
        self.any_line = False
      if self.pos_y is None:
        self.pos_y = 0.
    else:
      self.lanes = 0
      self.angle = 0.
      self.dir = ''
      self.any_line = False
      self.pos_y = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_bf().pack(_x.lanes, _x.angle))
      _x = self.dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bf().pack(_x.any_line, _x.pos_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.lanes, _x.angle,) = _get_struct_bf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.dir = str[start:end].decode('utf-8')
      else:
        self.dir = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.any_line, _x.pos_y,) = _get_struct_Bf().unpack(str[start:end])
      self.any_line = bool(self.any_line)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_bf().pack(_x.lanes, _x.angle))
      _x = self.dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bf().pack(_x.any_line, _x.pos_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.lanes, _x.angle,) = _get_struct_bf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.dir = str[start:end].decode('utf-8')
      else:
        self.dir = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.any_line, _x.pos_y,) = _get_struct_Bf().unpack(str[start:end])
      self.any_line = bool(self.any_line)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_bf = None
def _get_struct_bf():
    global _struct_bf
    if _struct_bf is None:
        _struct_bf = struct.Struct("<bf")
    return _struct_bf
_struct_Bf = None
def _get_struct_Bf():
    global _struct_Bf
    if _struct_Bf is None:
        _struct_Bf = struct.Struct("<Bf")
    return _struct_Bf