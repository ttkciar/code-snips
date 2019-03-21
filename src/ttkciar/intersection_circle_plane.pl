## NAME Circle-Plane Intersection
## DESCRIPTION Given a circle and a plane segment intersecting that circle, returns the area of intersection
## AUTHOR TTK Ciar
## TAGS math

use Math::Trig;

# Parameters:
#   r = radius of circle
#   z = distance from center of circle to the nearest point on edge of plane segment
#   t = depth of segment (distance from center of circle to nearest point on far edge of plane segment)
sub area_of_intersection_between_circle_and_plane_segment {
  my ($r, $z, $t) = @_;
  my $radians_near = 2 * acos($z / $r);
  my $area_near_segment = ($radians_near - sin($radians_near)) * $r**2 / 2;
  my $area;
  if ($z + $t < $r) {
    my $radians_far  = 2 * acos(($z+$t) / $r);
    my $area_far_segment = ($radians_far - sin($radians_far)) * $r**2 / 2;
    $area = $area_near_segment - $area_far_segment;
  } else {
    $area = $area_near_segment;
  }
  return $area;
}
