## NAME Stars within distance
## DESCRIPTION Given a distance, return the number of stars expected that close or closer, assuming stellar density similar to Sol's neighborhood
## AUTHOR TTK Ciar
## TAGS astronomy

use Math::Trig ':pi';

# Given a radius in light years, return the number of stars expected within that radius
sub stars_in_r {
  my ($r_ly) = @_;
  return ((4/3) * $r_ly**3 * pi) / 66;
}

sub stars_in_r_by_class {
  my ($r_ly) = @_;
  my $ct = stars_in_r($r_ly);
  return {
    N => int(10 * $ct + 0.5) / 10,  # estimated number of stars of all classes within range
    o => int(10 * $ct * 0.0000003 + 0.5) / 10,  # class-O stars
    b => int(10 * $ct * 0.0013    + 0.5) / 10,  # class-B stars
    a => int(10 * $ct * 0.0060    + 0.5) / 10,  # class-A stars
    f => int(10 * $ct * 0.0300    + 0.5) / 10,  # class-F stars
    g => int(10 * $ct * 0.0760    + 0.5) / 10,  # class-G stars
    k => int(10 * $ct * 0.1210    + 0.5) / 10,  # class-K stars
    m => int(10 * $ct * 0.7645    + 0.5) / 10,  # class-M stars
  };
}
