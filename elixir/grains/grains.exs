defmodule Grains do
  def square(number) do
    pow(number - 1)
  end

  def pow(exponent), do: do_pow(2, exponent, 1)

  def do_pow(_, 0, _), do: 1
  def do_pow(acc, x, x), do: acc
  def do_pow(acc, exponent, acc2) do
    do_pow(2 * acc, exponent, acc2 + 1)
  end

  def total do
    Enum.reduce(1..64, fn(x, acc) -> square(x) + acc end)
  end
end
