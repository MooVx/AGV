// Generated by gencpp from file steward/MotorsFeedback.msg
// DO NOT EDIT!


#ifndef STEWARD_MESSAGE_MOTORSFEEDBACK_H
#define STEWARD_MESSAGE_MOTORSFEEDBACK_H


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
struct MotorsFeedback_
{
  typedef MotorsFeedback_<ContainerAllocator> Type;

  MotorsFeedback_()
    : actual_velocity(0)
    , actual_angle(0.0)
    , actual_Y(0.0)  {
    }
  MotorsFeedback_(const ContainerAllocator& _alloc)
    : actual_velocity(0)
    , actual_angle(0.0)
    , actual_Y(0.0)  {
  (void)_alloc;
    }



   typedef int16_t _actual_velocity_type;
  _actual_velocity_type actual_velocity;

   typedef float _actual_angle_type;
  _actual_angle_type actual_angle;

   typedef float _actual_Y_type;
  _actual_Y_type actual_Y;




  typedef boost::shared_ptr< ::steward::MotorsFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steward::MotorsFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct MotorsFeedback_

typedef ::steward::MotorsFeedback_<std::allocator<void> > MotorsFeedback;

typedef boost::shared_ptr< ::steward::MotorsFeedback > MotorsFeedbackPtr;
typedef boost::shared_ptr< ::steward::MotorsFeedback const> MotorsFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steward::MotorsFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steward::MotorsFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace steward

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'steward': ['/home/agv/AGV/Pepperl/src/steward/msg', '/home/agv/AGV/Pepperl/devel/share/steward/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::steward::MotorsFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steward::MotorsFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::MotorsFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::MotorsFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::MotorsFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::MotorsFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steward::MotorsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3315109a593fd61ca499c8580578c0ca";
  }

  static const char* value(const ::steward::MotorsFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3315109a593fd61cULL;
  static const uint64_t static_value2 = 0xa499c8580578c0caULL;
};

template<class ContainerAllocator>
struct DataType< ::steward::MotorsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steward/MotorsFeedback";
  }

  static const char* value(const ::steward::MotorsFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steward::MotorsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int16 actual_velocity\n\
float32 actual_angle\n\
float32 actual_Y\n\
";
  }

  static const char* value(const ::steward::MotorsFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steward::MotorsFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actual_velocity);
      stream.next(m.actual_angle);
      stream.next(m.actual_Y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorsFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::steward::MotorsFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steward::MotorsFeedback_<ContainerAllocator>& v)
  {
    s << indent << "actual_velocity: ";
    Printer<int16_t>::stream(s, indent + "  ", v.actual_velocity);
    s << indent << "actual_angle: ";
    Printer<float>::stream(s, indent + "  ", v.actual_angle);
    s << indent << "actual_Y: ";
    Printer<float>::stream(s, indent + "  ", v.actual_Y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEWARD_MESSAGE_MOTORSFEEDBACK_H