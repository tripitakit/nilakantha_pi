# Nilakantha

Calculate PI recursively using Nilakantha series:

π = 3 +4(2×3×4) −4(4×5×6) +4(6×7×8) −4(8×9×10) ...

## Examples

  iex> Nilakantha.calculate_pi(0)
  3.0

  iex> Nilakantha.calculate_pi(1)
  3.1666666666666665

  iex(3)> Nilakantha.calculate_pi(2)
  3.1333333333333333

  iex(3)> Nilakantha.calculate_pi(3)
  3.145238095238095

  iex> Nilakantha.calculate_pi(1_000)
  3.141592653340544

  iex> Nilakantha.calculate_pi(1_000_000)
  3.141592653589787