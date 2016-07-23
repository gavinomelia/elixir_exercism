defmodule Triangle do
  @doc """
  Return the kind of triangle of a triangle with 'a', 'b' and 'c' as lengths.
  """
  def is_valid([a, b, c], kind) do
    cond do
      a + b <= c -> {:error, "side lengths violate triangle inequality"}
      a + c <= b -> {:error, "side lengths violate triangle inequality"}
      b + c <= a -> {:error, "side lengths violate triangle inequality"}
      true -> {:ok, kind}
    end
  end

  def kind(a, _, _) when a <= 0, do: {:error, "all side lengths must be positive"}
  def kind(_, b, _) when b <= 0, do: {:error, "all side lengths must be positive"}
  def kind(_, _, c) when c <= 0, do: {:error, "all side lengths must be positive"}

  def kind(a, a, a), do: {:ok, :equilateral}

  def kind(a, a, b), do: is_valid([a, a, b], :isosceles)
  def kind(a, b, a), do: is_valid([a, b, a], :isosceles)
  def kind(b, a, a), do: is_valid([b, a, a], :isosceles)

  def kind(a, b, c) do
    is_valid([a, b, c], :scalene)
  end
end
