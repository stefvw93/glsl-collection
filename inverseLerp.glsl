float inverseLerp(float min, float max, float value) {
  return (value - min) / (max - min);
}

vec2 inverseLerp(vec2 min, vec2 max, vec2 value) {
  return (value - min) / (max - min);
}

vec3 inverseLerp(vec3 min, vec3 max, vec3 value) {
  return (value - min) / (max - min);
}

vec4 inverseLerp(vec4 min, vec4 max, vec4 value) {
  return (value - min) / (max - min);
}

#pragma glslify: export(inverseLerp)