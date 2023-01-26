mat2 getRotationMatrix2d(float radians){
  float sine = sin(radians);
  float cosine = cos(radians);
  return mat2(cosine, -sine, sine, cosine);
}

#pragma glslify: export(getRotationMatrix2d)