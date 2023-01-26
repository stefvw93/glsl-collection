#pragma glslify: getOrthogonal = require('getOrthogonal')
#pragma glslify: getNormal = require('getNormal')

// https://observablehq.com/@k9/calculating-normals-for-distorted-vertices
vec3 getDisplacedNormal(vec3 displacedVector) {
  float tangentFactor = 0.001;
  vec3 tangent = getOrthogonal(normal);
  vec3 bitangent = normalize(cross(normal, tangent));
  vec3 nearby1 = position + tangent * tangentFactor;
  vec3 nearby2 = position + bitangent * tangentFactor;
  vec3 displacedNearby1 = displace(nearby1);
  vec3 displacedNearby2 = displace(nearby2);

  // https://i.ya-webdesign.com/images/vector-normals-tangent-16.png
  vec3 displacedTangent = displacedNearby1 - displacedVector;
  vec3 displacedBitangent = displacedNearby2 - displacedVector;

  // https://upload.wikimedia.org/wikipedia/commons/d/d2/Right_hand_rule_cross_product.svg
  vec3 displacedNormal = normalize(cross(displacedTangent, displacedBitangent));
  return displacedNormal;
}

#pragma glslify: export(getDisplacedNormal)