# glsl-utils

## getDisplacedNormal

Example usage

```glsl
vec3 myDisplacementFunction(vec3 vector) {
  return vector * 2.0;
}

#pragma glslify: require('glsl-collection/getDisplacedNormal', displace = myDisplacementFunction)
```
