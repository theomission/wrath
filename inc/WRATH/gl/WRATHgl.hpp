/*! 
 * \file WRATHgl.hpp
 * \brief file WRATHgl.hpp
 * 
 * Copyright 2013 by Nomovok Ltd.
 * 
 * Contact: info@nomovok.com
 * 
 * This Source Code Form is subject to the
 * terms of the Mozilla Public License, v. 2.0.
 * If a copy of the MPL was not distributed with
 * this file, You can obtain one at
 * http://mozilla.org/MPL/2.0/.
 * 
 * \author Kevin Rogovin <kevin.rogovin@nomovok.com>
 * 
 */


#ifndef WRATH_HEADER_GL_HPP_
#define WRATH_HEADER_GL_HPP_

#include "WRATHConfig.hpp"

#ifdef WRATH_GL_VERSION
  #include <ngl_gl.hpp>
  #define WRATH_GL_GLES_VERSION WRATH_GL_VERSION
#elif defined(WRATH_GLES_VERSION)
 #if WRATH_GLES_VERSION==3
  #include <ngl_gles3.hpp>
 #elif WRATH_GLES_VERSION==2
  #include <ngl_gles2.hpp>
 #endif

 #define WRATH_GL_GLES_VERSION WRATH_GLES_VERSION
#else
 #error Neither WRATH_GL_VERSION nor WRATH_GLES_VERSION defined
#endif

#endif
