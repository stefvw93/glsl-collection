// http://lolengine.net/blog/2013/09/21/picking-orthogonal-vector-combing-coconuts
vec3 getOrthogonal(vec3 vector) {
  return normalize(abs(vector.x) > abs(vector.z) 
  ? vec3(-vector.y, vector.x, 0.0)
  : vec3(0.0, -vector.z, vector.y));
}

#pragma glslify: export(getOrthogonal)