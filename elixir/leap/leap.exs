defmodule Year do
  def leap_year?(year) when rem(year, 4) == 0 do
    check_100?(year)
  end
  def leap_year?(_), do: false

  defp check_100?(year) when rem(year, 100) == 0 do
    check_400?(year)
  end
  defp check_100?(_), do: true

  defp check_400?(year) when rem(year, 400) == 0 do
    true
  end
  defp check_400?(_), do: false
end
