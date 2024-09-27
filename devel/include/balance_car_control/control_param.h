// Generated by gencpp from file balance_car_control/control_param.msg
// DO NOT EDIT!


#ifndef BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAM_H
#define BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAM_H

#include <ros/service_traits.h>


#include <balance_car_control/control_paramRequest.h>
#include <balance_car_control/control_paramResponse.h>


namespace balance_car_control
{

struct control_param
{

typedef control_paramRequest Request;
typedef control_paramResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct control_param
} // namespace balance_car_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::balance_car_control::control_param > {
  static const char* value()
  {
    return "0acb029cdb27dd01bf6ea8bf609b687e";
  }

  static const char* value(const ::balance_car_control::control_param&) { return value(); }
};

template<>
struct DataType< ::balance_car_control::control_param > {
  static const char* value()
  {
    return "balance_car_control/control_param";
  }

  static const char* value(const ::balance_car_control::control_param&) { return value(); }
};


// service_traits::MD5Sum< ::balance_car_control::control_paramRequest> should match
// service_traits::MD5Sum< ::balance_car_control::control_param >
template<>
struct MD5Sum< ::balance_car_control::control_paramRequest>
{
  static const char* value()
  {
    return MD5Sum< ::balance_car_control::control_param >::value();
  }
  static const char* value(const ::balance_car_control::control_paramRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::balance_car_control::control_paramRequest> should match
// service_traits::DataType< ::balance_car_control::control_param >
template<>
struct DataType< ::balance_car_control::control_paramRequest>
{
  static const char* value()
  {
    return DataType< ::balance_car_control::control_param >::value();
  }
  static const char* value(const ::balance_car_control::control_paramRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::balance_car_control::control_paramResponse> should match
// service_traits::MD5Sum< ::balance_car_control::control_param >
template<>
struct MD5Sum< ::balance_car_control::control_paramResponse>
{
  static const char* value()
  {
    return MD5Sum< ::balance_car_control::control_param >::value();
  }
  static const char* value(const ::balance_car_control::control_paramResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::balance_car_control::control_paramResponse> should match
// service_traits::DataType< ::balance_car_control::control_param >
template<>
struct DataType< ::balance_car_control::control_paramResponse>
{
  static const char* value()
  {
    return DataType< ::balance_car_control::control_param >::value();
  }
  static const char* value(const ::balance_car_control::control_paramResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BALANCE_CAR_CONTROL_MESSAGE_CONTROL_PARAM_H