defmodule Year do
  def leap_year?(year) when rem(year, 4) == 0 do
    div_100?(year)
  end
  def leap_year?(_), do: false

  defp div_100?(year) when rem(year, 100) == 0 do
    div_400?(year)
  end
  defp div_100?(_), do: true

  defp div_400?(year) when rem(year, 400) == 0 do
    true
  end
  defp div_400?(_), do: false
end
