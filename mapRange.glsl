#pragma glslify: inverseLerp = require('inverseLerp')

float mapRange(float inMin, float inMax, float outMin, float outMax, float value) {
  return mix(
    outMin,
    outMax,
    inverseLerp(inMin, inMax, value)
  );
}

vec2 mapRange(vec2 inMin, vec2 inMax, vec2 outMin, vec2 outMax, float value) {
  return mix(
    outMin,
    outMax,
    inverseLerp(inMin, inMax, value)
  );
}

vec3 mapRange(vec3 inMin, vec3 inMax, vec3 outMin, vec3 outMax, float value) {
  return mix(
    outMin,
    outMax,
    inverseLerp(inMin, inMax, value)
  );
}

vec4 mapRange(vec4 inMin, vec4 inMax, vec4 outMin, vec4 outMax, float value) {
  return mix(
    outMin,
    outMax,
    inverseLerp(inMin, inMax, value)
  );
}

#pragma glslify: export(mapRange)