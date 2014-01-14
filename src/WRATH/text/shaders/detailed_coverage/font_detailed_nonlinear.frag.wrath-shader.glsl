shader_in mediump vec3 wrath_DetailedGlyphRecipSize_GlyphIndex;

mediump float 
is_covered(in vec2 glyph_position)
{
  return wrath_detailed_is_covered(glyph_position,
                                   glyph_position*wrath_DetailedGlyphRecipSize_GlyphIndex.xy,
                                   wrath_DetailedGlyphRecipSize_GlyphIndex.z);
}

mediump float
compute_coverage(in vec2 glyph_position)
{
  return wrath_detailed_compute_coverage(glyph_position,
                                         glyph_position*wrath_DetailedGlyphRecipSize_GlyphIndex.xy,
                                         wrath_DetailedGlyphRecipSize_GlyphIndex.z);
}
