defmodule Nilakantha do

  @moduledoc """
  Calculate PI recursively using Nilakantha series
  π=3+4(2×3×4)−4(4×5×6)+4(6×7×8)−4(8×9×10) ...

  Nilakantha.calculate_pi/1
  """

  @doc """
  calculate_pi/1

  Calculates PI recursively over a given number of iterations.

    ## Examples

        iex> Nilakantha.calculate_pi(0)
        3.0

        iex> Nilakantha.calculate_pi(1)
        3.1666666666666665

        iex> Nilakantha.calculate_pi(2)
        3.1333333333333333

        iex> Nilakantha.calculate_pi(3)
        3.145238095238095

        iex> Nilakantha.calculate_pi(1_000)
        3.141592653340544

        iex> Nilakantha.calculate_pi(1_000_000)
        3.141592653589787
  """
  @spec calculate_pi(iterations :: integer) :: float
  def calculate_pi(iterations) do
      loop(_accumulator = 3.0, _sign = 1, _seed = 2, iterations)
  end


  # private functions

  # recursive sum of Nilakantha-series terms
  @spec loop(float, integer, integer, integer) :: float :: integer :: integer :: integer
  defp loop(accumulator, sign, seed, iterations)

  defp loop(accumulator, _, _, 0), do: accumulator

  defp loop(accumulator, sign, seed, iterations) do
    accumulator + term(seed, sign)
    |> loop(-1*sign, seed+2, iterations-1)
  end

  # Nilakantha-series term's value for a given integer
  @spec term(integer, integer) :: float
  defp term(seed, sign) do
     sign * (4 / ( seed * (seed+1) * (seed+2) ))
  end


end