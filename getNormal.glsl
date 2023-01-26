// https://upload.wikimedia.org/wikipedia/commons/d/d2/Right_hand_rule_cross_product.svg
vec3 getNormal(vec3 a, vec3 b) {
  return normalize(cross(a, b));
}

#pragma glslify: export(getNormal)