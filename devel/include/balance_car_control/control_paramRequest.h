// Generated by gencpp from file balance_car_control/control_paramRequest.msg
// DO NOT EDIT!


#ifndef BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMREQUEST_H
#define BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace balance_car_control
{
template <class ContainerAllocator>
struct control_paramRequest_
{
  typedef control_paramRequest_<ContainerAllocator> Type;

  control_paramRequest_()
    : leftWheelVelocity(0.0)
    , rightWheelVelocity(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , pitchAngVelocity(0.0)
    , yawAngVelocity(0.0)
    , dst_vel(0.0)
    , dst_yaw(0.0)  {
    }
  control_paramRequest_(const ContainerAllocator& _alloc)
    : leftWheelVelocity(0.0)
    , rightWheelVelocity(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , pitchAngVelocity(0.0)
    , yawAngVelocity(0.0)
    , dst_vel(0.0)
    , dst_yaw(0.0)  {
  (void)_alloc;
    }



   typedef double _leftWheelVelocity_type;
  _leftWheelVelocity_type leftWheelVelocity;

   typedef double _rightWheelVelocity_type;
  _rightWheelVelocity_type rightWheelVelocity;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitchAngVelocity_type;
  _pitchAngVelocity_type pitchAngVelocity;

   typedef double _yawAngVelocity_type;
  _yawAngVelocity_type yawAngVelocity;

   typedef double _dst_vel_type;
  _dst_vel_type dst_vel;

   typedef double _dst_yaw_type;
  _dst_yaw_type dst_yaw;





  typedef boost::shared_ptr< ::balance_car_control::control_paramRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::balance_car_control::control_paramRequest_<ContainerAllocator> const> ConstPtr;

}; // struct control_paramRequest_

typedef ::balance_car_control::control_paramRequest_<std::allocator<void> > control_paramRequest;

typedef boost::shared_ptr< ::balance_car_control::control_paramRequest > control_paramRequestPtr;
typedef boost::shared_ptr< ::balance_car_control::control_paramRequest const> control_paramRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::balance_car_control::control_paramRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::balance_car_control::control_paramRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::balance_car_control::control_paramRequest_<ContainerAllocator1> & lhs, const ::balance_car_control::control_paramRequest_<ContainerAllocator2> & rhs)
{
  return lhs.leftWheelVelocity == rhs.leftWheelVelocity &&
    lhs.rightWheelVelocity == rhs.rightWheelVelocity &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.pitchAngVelocity == rhs.pitchAngVelocity &&
    lhs.yawAngVelocity == rhs.yawAngVelocity &&
    lhs.dst_vel == rhs.dst_vel &&
    lhs.dst_yaw == rhs.dst_yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::balance_car_control::control_paramRequest_<ContainerAllocator1> & lhs, const ::balance_car_control::control_paramRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace balance_car_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::balance_car_control::control_paramRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::balance_car_control::control_paramRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::balance_car_control::control_paramRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "246e71c94ab082441dd57639ad4eb032";
  }

  static const char* value(const ::balance_car_control::control_paramRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x246e71c94ab08244ULL;
  static const uint64_t static_value2 = 0x1dd57639ad4eb032ULL;
};

template<class ContainerAllocator>
struct DataType< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "balance_car_control/control_paramRequest";
  }

  static const char* value(const ::balance_car_control::control_paramRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Data sensed by sensors\n"
"float64 leftWheelVelocity        \n"
"float64 rightWheelVelocity       \n"
"float64 pitch                    \n"
"float64 yaw                     \n"
"float64 pitchAngVelocity         \n"
"float64 yawAngVelocity           \n"
"# Control messages received by the keyboard control node\n"
"float64 dst_vel                  \n"
"float64 dst_yaw                  \n"
;
  }

  static const char* value(const ::balance_car_control::control_paramRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leftWheelVelocity);
      stream.next(m.rightWheelVelocity);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.pitchAngVelocity);
      stream.next(m.yawAngVelocity);
      stream.next(m.dst_vel);
      stream.next(m.dst_yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_paramRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::balance_car_control::control_paramRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::balance_car_control::control_paramRequest_<ContainerAllocator>& v)
  {
    s << indent << "leftWheelVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.leftWheelVelocity);
    s << indent << "rightWheelVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.rightWheelVelocity);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitchAngVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.pitchAngVelocity);
    s << indent << "yawAngVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.yawAngVelocity);
    s << indent << "dst_vel: ";
    Printer<double>::stream(s, indent + "  ", v.dst_vel);
    s << indent << "dst_yaw: ";
    Printer<double>::stream(s, indent + "  ", v.dst_yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMREQUEST_H