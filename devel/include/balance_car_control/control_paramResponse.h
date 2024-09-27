// Generated by gencpp from file balance_car_control/control_paramResponse.msg
// DO NOT EDIT!


#ifndef BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMRESPONSE_H
#define BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMRESPONSE_H


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
struct control_paramResponse_
{
  typedef control_paramResponse_<ContainerAllocator> Type;

  control_paramResponse_()
    : leftTorque(0.0)
    , rightTorque(0.0)  {
    }
  control_paramResponse_(const ContainerAllocator& _alloc)
    : leftTorque(0.0)
    , rightTorque(0.0)  {
  (void)_alloc;
    }



   typedef double _leftTorque_type;
  _leftTorque_type leftTorque;

   typedef double _rightTorque_type;
  _rightTorque_type rightTorque;





  typedef boost::shared_ptr< ::balance_car_control::control_paramResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::balance_car_control::control_paramResponse_<ContainerAllocator> const> ConstPtr;

}; // struct control_paramResponse_

typedef ::balance_car_control::control_paramResponse_<std::allocator<void> > control_paramResponse;

typedef boost::shared_ptr< ::balance_car_control::control_paramResponse > control_paramResponsePtr;
typedef boost::shared_ptr< ::balance_car_control::control_paramResponse const> control_paramResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::balance_car_control::control_paramResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::balance_car_control::control_paramResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::balance_car_control::control_paramResponse_<ContainerAllocator1> & lhs, const ::balance_car_control::control_paramResponse_<ContainerAllocator2> & rhs)
{
  return lhs.leftTorque == rhs.leftTorque &&
    lhs.rightTorque == rhs.rightTorque;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::balance_car_control::control_paramResponse_<ContainerAllocator1> & lhs, const ::balance_car_control::control_paramResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace balance_car_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::balance_car_control::control_paramResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::balance_car_control::control_paramResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::balance_car_control::control_paramResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b727766ecb9b19062370d32e6dbc80b1";
  }

  static const char* value(const ::balance_car_control::control_paramResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb727766ecb9b1906ULL;
  static const uint64_t static_value2 = 0x2370d32e6dbc80b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "balance_car_control/control_paramResponse";
  }

  static const char* value(const ::balance_car_control::control_paramResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Control torque of two wheels of balancing car\n"
"float64 leftTorque\n"
"float64 rightTorque\n"
;
  }

  static const char* value(const ::balance_car_control::control_paramResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leftTorque);
      stream.next(m.rightTorque);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_paramResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::balance_car_control::control_paramResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::balance_car_control::control_paramResponse_<ContainerAllocator>& v)
  {
    s << indent << "leftTorque: ";
    Printer<double>::stream(s, indent + "  ", v.leftTorque);
    s << indent << "rightTorque: ";
    Printer<double>::stream(s, indent + "  ", v.rightTorque);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAMRESPONSE_H