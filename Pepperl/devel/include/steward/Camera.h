// Generated by gencpp from file steward/Camera.msg
// DO NOT EDIT!


#ifndef STEWARD_MESSAGE_CAMERA_H
#define STEWARD_MESSAGE_CAMERA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace steward
{
template <class ContainerAllocator>
struct Camera_
{
  typedef Camera_<ContainerAllocator> Type;

  Camera_()
    : lanes(0)
    , angle(0.0)
    , dir()
    , any_line(false)
    , pos_y(0.0)  {
    }
  Camera_(const ContainerAllocator& _alloc)
    : lanes(0)
    , angle(0.0)
    , dir(_alloc)
    , any_line(false)
    , pos_y(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _lanes_type;
  _lanes_type lanes;

   typedef float _angle_type;
  _angle_type angle;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dir_type;
  _dir_type dir;

   typedef uint8_t _any_line_type;
  _any_line_type any_line;

   typedef float _pos_y_type;
  _pos_y_type pos_y;




  typedef boost::shared_ptr< ::steward::Camera_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steward::Camera_<ContainerAllocator> const> ConstPtr;

}; // struct Camera_

typedef ::steward::Camera_<std::allocator<void> > Camera;

typedef boost::shared_ptr< ::steward::Camera > CameraPtr;
typedef boost::shared_ptr< ::steward::Camera const> CameraConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steward::Camera_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steward::Camera_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace steward

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'steward': ['/home/pawel/AGV/Pepperl/src/steward/msg', '/home/pawel/AGV/Pepperl/devel/share/steward/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::steward::Camera_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steward::Camera_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::Camera_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::Camera_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::Camera_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::Camera_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steward::Camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7955391981ec33d82887b36a30719f2";
  }

  static const char* value(const ::steward::Camera_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7955391981ec33dULL;
  static const uint64_t static_value2 = 0x82887b36a30719f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::steward::Camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steward/Camera";
  }

  static const char* value(const ::steward::Camera_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steward::Camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 lanes\n\
float32 angle\n\
string dir\n\
bool any_line\n\
float32 pos_y\n\
";
  }

  static const char* value(const ::steward::Camera_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steward::Camera_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lanes);
      stream.next(m.angle);
      stream.next(m.dir);
      stream.next(m.any_line);
      stream.next(m.pos_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Camera_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::steward::Camera_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steward::Camera_<ContainerAllocator>& v)
  {
    s << indent << "lanes: ";
    Printer<int8_t>::stream(s, indent + "  ", v.lanes);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dir);
    s << indent << "any_line: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.any_line);
    s << indent << "pos_y: ";
    Printer<float>::stream(s, indent + "  ", v.pos_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEWARD_MESSAGE_CAMERA_H
