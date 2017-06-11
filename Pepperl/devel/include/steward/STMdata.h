// Generated by gencpp from file steward/STMdata.msg
// DO NOT EDIT!


#ifndef STEWARD_MESSAGE_STMDATA_H
#define STEWARD_MESSAGE_STMDATA_H


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
struct STMdata_
{
  typedef STMdata_<ContainerAllocator> Type;

  STMdata_()
    : dirL(false)
    , dirR(false)
    , speedL(0)
    , speedR(0)
    , n_cntL(0)
    , n_cntR(0)
    , battery_12(0)
    , battery_24(0)
    , safety_button(false)
    , field1(false)
    , field2(false)
    , field3(false)
    , field4(false)  {
    }
  STMdata_(const ContainerAllocator& _alloc)
    : dirL(false)
    , dirR(false)
    , speedL(0)
    , speedR(0)
    , n_cntL(0)
    , n_cntR(0)
    , battery_12(0)
    , battery_24(0)
    , safety_button(false)
    , field1(false)
    , field2(false)
    , field3(false)
    , field4(false)  {
  (void)_alloc;
    }



   typedef uint8_t _dirL_type;
  _dirL_type dirL;

   typedef uint8_t _dirR_type;
  _dirR_type dirR;

   typedef int16_t _speedL_type;
  _speedL_type speedL;

   typedef int16_t _speedR_type;
  _speedR_type speedR;

   typedef int16_t _n_cntL_type;
  _n_cntL_type n_cntL;

   typedef int16_t _n_cntR_type;
  _n_cntR_type n_cntR;

   typedef int16_t _battery_12_type;
  _battery_12_type battery_12;

   typedef int16_t _battery_24_type;
  _battery_24_type battery_24;

   typedef uint8_t _safety_button_type;
  _safety_button_type safety_button;

   typedef uint8_t _field1_type;
  _field1_type field1;

   typedef uint8_t _field2_type;
  _field2_type field2;

   typedef uint8_t _field3_type;
  _field3_type field3;

   typedef uint8_t _field4_type;
  _field4_type field4;




  typedef boost::shared_ptr< ::steward::STMdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steward::STMdata_<ContainerAllocator> const> ConstPtr;

}; // struct STMdata_

typedef ::steward::STMdata_<std::allocator<void> > STMdata;

typedef boost::shared_ptr< ::steward::STMdata > STMdataPtr;
typedef boost::shared_ptr< ::steward::STMdata const> STMdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steward::STMdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steward::STMdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace steward

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'steward': ['/home/dawid/AGV/Pepperl/src/steward/msg', '/home/dawid/AGV/Pepperl/devel/share/steward/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::steward::STMdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steward::STMdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::STMdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steward::STMdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::STMdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steward::STMdata_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steward::STMdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f54db2db462926e76b4023cd830b792";
  }

  static const char* value(const ::steward::STMdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f54db2db462926eULL;
  static const uint64_t static_value2 = 0x76b4023cd830b792ULL;
};

template<class ContainerAllocator>
struct DataType< ::steward::STMdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steward/STMdata";
  }

  static const char* value(const ::steward::STMdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steward::STMdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool dirL\n\
bool dirR\n\
int16 speedL\n\
int16 speedR\n\
int16 n_cntL\n\
int16 n_cntR\n\
int16 battery_12\n\
int16 battery_24\n\
bool safety_button\n\
bool field1\n\
bool field2\n\
bool field3\n\
bool field4\n\
";
  }

  static const char* value(const ::steward::STMdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steward::STMdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dirL);
      stream.next(m.dirR);
      stream.next(m.speedL);
      stream.next(m.speedR);
      stream.next(m.n_cntL);
      stream.next(m.n_cntR);
      stream.next(m.battery_12);
      stream.next(m.battery_24);
      stream.next(m.safety_button);
      stream.next(m.field1);
      stream.next(m.field2);
      stream.next(m.field3);
      stream.next(m.field4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct STMdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::steward::STMdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steward::STMdata_<ContainerAllocator>& v)
  {
    s << indent << "dirL: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dirL);
    s << indent << "dirR: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dirR);
    s << indent << "speedL: ";
    Printer<int16_t>::stream(s, indent + "  ", v.speedL);
    s << indent << "speedR: ";
    Printer<int16_t>::stream(s, indent + "  ", v.speedR);
    s << indent << "n_cntL: ";
    Printer<int16_t>::stream(s, indent + "  ", v.n_cntL);
    s << indent << "n_cntR: ";
    Printer<int16_t>::stream(s, indent + "  ", v.n_cntR);
    s << indent << "battery_12: ";
    Printer<int16_t>::stream(s, indent + "  ", v.battery_12);
    s << indent << "battery_24: ";
    Printer<int16_t>::stream(s, indent + "  ", v.battery_24);
    s << indent << "safety_button: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.safety_button);
    s << indent << "field1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.field1);
    s << indent << "field2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.field2);
    s << indent << "field3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.field3);
    s << indent << "field4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.field4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEWARD_MESSAGE_STMDATA_H
