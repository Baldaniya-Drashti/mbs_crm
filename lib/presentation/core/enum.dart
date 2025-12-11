enum FilterAttribute { brand, id, od, depth, dimension, chamfersAngles }

const filterAttributes = [
  FilterAttribute.brand,
  FilterAttribute.id,
  FilterAttribute.od,
  FilterAttribute.depth,
  FilterAttribute.dimension,
  FilterAttribute.chamfersAngles,
];

String attributeToString(FilterAttribute attribute) {
  switch (attribute) {
    case FilterAttribute.brand:
      return "brand";
    case FilterAttribute.id:
      return "id";
    case FilterAttribute.od:
      return "od";
    case FilterAttribute.depth:
      return "depth";
    case FilterAttribute.dimension:
      return "dimensions";
    case FilterAttribute.chamfersAngles:
      return "chamfers-angles";
  }
}
