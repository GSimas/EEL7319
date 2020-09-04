/*
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 */

#ifndef ANALOGFUNCTIONS_H
#define ANALOGFUNCTIONS_H

#include <math.h>

#ifdef WIN32
# define atanh(x) (0.5 * log((1.0 + (x)) / (1.0 - (x))))
# define asinh(x) log((x) + sqrt((x) * (x) + 1.0))
# define acosh(x) log((x) + sqrt((x) * (x) - 1.0))
#endif

// derivative helper macros
#define m10_hypot(v10,v00,x,y)  v10 = (x)/(v00);
#define m11_hypot(v11,v00,x,y)  v11 = (y)/(v00);
#define m10_max(v10,v00,x,y)    v10 = ((x)>(y))?1.0:0.0;
#define m11_max(v11,v00,x,y)    v11 = ((x)>(y))?0.0:1.0;
#define m10_min(v10,v00,x,y)    v10 = ((x)<(y))?1.0:0.0;
#define m11_min(v11,v00,x,y)    v11 = ((x)<(y))?0.0:1.0;
#define m10_pow(v10,v00,x,y)    v10 = (x==0.0)?0.0:(v00)*(y)/(x);
#define m11_pow(v11,v00,x,y)    v11 = (x==0.0)?0.0:(log(x)*(v00));

#define m10_exp(v10,v00,x)      v10 = v00;
#define m10_cos(v10,v00,x)      v10 = (-sin(x));
#define m10_sin(v10,v00,x)      v10 = (cos(x));
#define m10_tan(v10,v00,x)      v10 = (1.0+v00*v00);
#define m10_cosh(v10,v00,x)     v10 = (sinh(x));
#define m10_sinh(v10,v00,x)     v10 = (cosh(x));
#define m10_tanh(v10,v00,x)     v10 = (1.0-v00*v00);
#define m10_acos(v10,v00,x)     v10 = (-1.0/sqrt(1-x*x));
#define m10_asin(v10,v00,x)     v10 = (1.0/sqrt(1-x*x));
#define m10_atan(v10,v00,x)     v10 = (1.0/(1+x*x));
#define m10_acosh(v10,v00,x)    v10 = (1.0/(sqrt(x-1)*sqrt(x+1)));
#define m10_asinh(v10,v00,x)    v10 = (1.0/sqrt(x*x+1));
#define m10_atanh(v10,v00,x)    v10 = (1.0/(1-x*x));
#define m10_log(v10,v00,x)      v10 = (1.0/x);
#define m10_log10(v10,v00,x)    v10 = (1.0/x/M_LN10);
#define m10_sqrt(v10,v00,x)     v10 = (0.5/v00);
#define m10_fabs(v10,v00,x)     v10 = (((x)>=0)?(+1.0):(-1.0));
#define m10_limexp(v10,v00,x)   v10 = ((x)<80.0?(v00):exp(80.0));
#define m10_vt(x)               (KB_DIV_Q)

#define m20_log(v00)            (-1.0/v00/v00)
#define m20_exp(v00)            exp(v00)
#define m20_limexp(v00)         ((v00)<80.0?exp(v00):0.0)
#define m20_sqrt(v00)           (-0.25/(v00)/sqrt(v00))
#define m20_fabs(v00)           0.0
#define m20_pow(x,y)            ((y)*((y)-1.0)*pow(x,y)/(x)/(x))
#define m20_tanh(v00)           (-2.0*sinh(x)/cosh(x)/cosh(x)/cosh(x))

// math functions and appropriate derivatives
// used in VerilogA subroutines
inline double _d0_cos(double arg)          { return (-sin(arg)); }
inline double _d0_sin(double arg)          { return (cos(arg)); }
inline double _d0_tan(double arg)          { return (1.0/cos(arg)/cos(arg)); }
inline double _d0_cosh(double arg)         { return (sinh(arg)); }
inline double _d0_sinh(double arg)         { return (cosh(arg)); }
inline double _d0_tanh(double arg)         { return (1.0/cosh(arg)/cosh(arg)); }
inline double _d0_acos(double arg)         { return (-1.0/sqrt(1-arg*arg)); }
inline double _d0_asin(double arg)         { return (+1.0/sqrt(1-arg*arg)); }
inline double _d0_atan(double arg)         { return (+1.0/(1+arg*arg)); }
inline double _d0_acosh(double arg)        { return (1.0/(sqrt(arg-1)*sqrt(arg+1))); }
inline double _d0_asinh(double arg)        { return (1.0/(sqrt(arg*arg+1))); }
inline double _d0_atanh(double arg)        { return (+1.0/(1-arg*arg)); }
inline double _d0_log(double arg)          { return (1.0/arg); }
inline double _d0_log10(double arg)        { return (1.0/arg/log(10.0)); }
inline double _d0_exp(double arg)          { return exp(arg); }
inline double _d0_sqrt(double arg)         { return (1.0/sqrt(arg)/2.0); }

inline double _d0_abs(double arg)          { return (((arg)>=0)?(+1.0):(-1.0)); }
inline double _d0_floor(double)            { return (1.0); }

inline double _d0_hypot(double x,double y) { return (x)/sqrt((x)*(x)+(y)*(y)); }
inline double _d1_hypot(double x,double y) { return (y)/sqrt((x)*(x)+(y)*(y)); }

inline double max(double x,double y)       { return ((x)>(y))?(x):(y); }
inline double _d0_max(double x,double y)   { return ((x)>(y))?1.0:0.0; }
inline double _d1_max(double x,double y)   { return ((x)>(y))?0.0:1.0; }

inline double min(double x,double y)       { return ((x)<(y))?(x):(y); }
inline double _d0_min(double x,double y)   { return ((x)<(y))?1.0:0.0; }
inline double _d1_min(double x,double y)   { return ((x)<(y))?0.0:1.0; }

inline double _d0_pow(double x,double y)   { return (x==0.0)?0.0:((y/x)*pow(x,y)); }
inline double _d1_pow(double x,double y)   { return (x==0.0)?0.0:((log(x)/exp(0.0))*pow(x,y)); }

inline double limexp(double arg)           { return ((arg)<(80))?(exp(arg)):(exp(80.0)*(1.0+(arg-80))); }
inline double _d0_limexp(double arg)       { return ((arg)<(80))?(exp(arg)):(exp(80.0)); }

inline double vt(double arg)               { return KB_DIV_Q*arg; }
inline double _d0_vt(double)               { return KB_DIV_Q; }

#endif
