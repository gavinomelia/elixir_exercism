defmodule Triangle do
  def is_valid([a, b, c], kind) do
    cond do
      Enum.any?([a, b, c], fn(x) -> x <= 0 end) -> {:error, "all side lengths must be positive"}
      a + b <= c -> {:error, "side lengths violate triangle inequality"}
      a + c <= b -> {:error, "side lengths violate triangle inequality"}
      b + c <= a -> {:error, "side lengths violate triangle inequality"}
      true -> {:ok, kind}
    end
  end

  def kind(a, a, a), do: is_valid([a, a, a], :equilateral)

  def kind(a, a, b), do: is_valid([a, a, b], :isosceles)
  def kind(a, b, a), do: is_valid([a, b, a], :isosceles)
  def kind(b, a, a), do: is_valid([b, a, a], :isosceles)

  def kind(a, b, c) do
    is_valid([a, b, c], :scalene)
  end
end
