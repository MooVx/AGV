# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from steward/MotorsFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MotorsFeedback(genpy.Message):
  _md5sum = "3315109a593fd61ca499c8580578c0ca"
  _type = "steward/MotorsFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int16 actual_velocity
float32 actual_angle
float32 actual_Y
"""
  __slots__ = ['actual_velocity','actual_angle','actual_Y']
  _slot_types = ['int16','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       actual_velocity,actual_angle,actual_Y

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorsFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.actual_velocity is None:
        self.actual_velocity = 0
      if self.actual_angle is None:
        self.actual_angle = 0.
      if self.actual_Y is None:
        self.actual_Y = 0.
    else:
      self.actual_velocity = 0
      self.actual_angle = 0.
      self.actual_Y = 0.

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
      buff.write(_get_struct_h2f().pack(_x.actual_velocity, _x.actual_angle, _x.actual_Y))
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
      end += 10
      (_x.actual_velocity, _x.actual_angle, _x.actual_Y,) = _get_struct_h2f().unpack(str[start:end])
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
      buff.write(_get_struct_h2f().pack(_x.actual_velocity, _x.actual_angle, _x.actual_Y))
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
      end += 10
      (_x.actual_velocity, _x.actual_angle, _x.actual_Y,) = _get_struct_h2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h2f = None
def _get_struct_h2f():
    global _struct_h2f
    if _struct_h2f is None:
        _struct_h2f = struct.Struct("<h2f")
    return _struct_h2f