/*! 
 * \file font_generic.frag.wrath-shader.glsl
 * \brief file font_generic.frag.wrath-shader.glsl
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


shader_in mediump vec4 tex_color;

void
shader_main(void)
{
  #if !defined(WRATH_NON_COLOR_DRAW)
  {
    #if defined(APPLY_BRUSH_RELATIVE_TO_LETTER) || defined(APPLY_BRUSH_RELATIVE_TO_ITEM)
    {
      tex_color*=wrath_shader_brush_color();
    }
    #endif
  }
  #endif

  #if defined(WRATH_COVER_DRAW)
  {
    //a previous pass guarantees that the
    //fragment is covered by the glyph, thus
    //we can skip the test and just draw the color
    gl_FragColor=tex_color;
  }
  #else
  {
    mediump float d;
    d=is_covered();

    #if defined(IS_OPAQUE_PASS) 
      if(d<0.5)
        discard;
      gl_FragColor=tex_color;
    #else
      if(d<0.5)
        gl_FragColor=vec4(0.0, 0.0, 0.0, 0.0);
      else
        gl_FragColor=tex_color;
    #endif
  }
  #endif
}
