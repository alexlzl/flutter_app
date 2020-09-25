class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

// Operator == and hashCode not shown. For details, see note below.
// ···
}

void main() {
  final v = Vector(3, 3);
  final w = Vector(2, 2);
print(v + w == Vector(4, 5));
print((v+w).x);

//  assert(v - w == Vector(0, 1));
}
