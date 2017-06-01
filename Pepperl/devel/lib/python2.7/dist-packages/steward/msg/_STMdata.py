# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from steward/STMdata.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class STMdata(genpy.Message):
  _md5sum = "2f54db2db462926e76b4023cd830b792"
  _type = "steward/STMdata"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool dirL
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
"""
  __slots__ = ['dirL','dirR','speedL','speedR','n_cntL','n_cntR','battery_12','battery_24','safety_button','field1','field2','field3','field4']
  _slot_types = ['bool','bool','int16','int16','int16','int16','int16','int16','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dirL,dirR,speedL,speedR,n_cntL,n_cntR,battery_12,battery_24,safety_button,field1,field2,field3,field4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(STMdata, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.dirL is None:
        self.dirL = False
      if self.dirR is None:
        self.dirR = False
      if self.speedL is None:
        self.speedL = 0
      if self.speedR is None:
        self.speedR = 0
      if self.n_cntL is None:
        self.n_cntL = 0
      if self.n_cntR is None:
        self.n_cntR = 0
      if self.battery_12 is None:
        self.battery_12 = 0
      if self.battery_24 is None:
        self.battery_24 = 0
      if self.safety_button is None:
        self.safety_button = False
      if self.field1 is None:
        self.field1 = False
      if self.field2 is None:
        self.field2 = False
      if self.field3 is None:
        self.field3 = False
      if self.field4 is None:
        self.field4 = False
    else:
      self.dirL = False
      self.dirR = False
      self.speedL = 0
      self.speedR = 0
      self.n_cntL = 0
      self.n_cntR = 0
      self.battery_12 = 0
      self.battery_24 = 0
      self.safety_button = False
      self.field1 = False
      self.field2 = False
      self.field3 = False
      self.field4 = False

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
      buff.write(_get_struct_2B6h5B().pack(_x.dirL, _x.dirR, _x.speedL, _x.speedR, _x.n_cntL, _x.n_cntR, _x.battery_12, _x.battery_24, _x.safety_button, _x.field1, _x.field2, _x.field3, _x.field4))
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
      end += 19
      (_x.dirL, _x.dirR, _x.speedL, _x.speedR, _x.n_cntL, _x.n_cntR, _x.battery_12, _x.battery_24, _x.safety_button, _x.field1, _x.field2, _x.field3, _x.field4,) = _get_struct_2B6h5B().unpack(str[start:end])
      self.dirL = bool(self.dirL)
      self.dirR = bool(self.dirR)
      self.safety_button = bool(self.safety_button)
      self.field1 = bool(self.field1)
      self.field2 = bool(self.field2)
      self.field3 = bool(self.field3)
      self.field4 = bool(self.field4)
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
      buff.write(_get_struct_2B6h5B().pack(_x.dirL, _x.dirR, _x.speedL, _x.speedR, _x.n_cntL, _x.n_cntR, _x.battery_12, _x.battery_24, _x.safety_button, _x.field1, _x.field2, _x.field3, _x.field4))
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
      end += 19
      (_x.dirL, _x.dirR, _x.speedL, _x.speedR, _x.n_cntL, _x.n_cntR, _x.battery_12, _x.battery_24, _x.safety_button, _x.field1, _x.field2, _x.field3, _x.field4,) = _get_struct_2B6h5B().unpack(str[start:end])
      self.dirL = bool(self.dirL)
      self.dirR = bool(self.dirR)
      self.safety_button = bool(self.safety_button)
      self.field1 = bool(self.field1)
      self.field2 = bool(self.field2)
      self.field3 = bool(self.field3)
      self.field4 = bool(self.field4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B6h5B = None
def _get_struct_2B6h5B():
    global _struct_2B6h5B
    if _struct_2B6h5B is None:
        _struct_2B6h5B = struct.Struct("<2B6h5B")
    return _struct_2B6h5B