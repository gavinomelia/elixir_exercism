defmodule Phone do
  def number(raw) do
    clean(raw) |> valid_check
  end

  defp valid_check(clean_num) when byte_size(clean_num) > 10 do
    new_num = check_1(clean_num)
    if byte_size(new_num) > 10 do
      "0000000000"
    else
      valid_check(new_num)
    end
  end
  defp valid_check(clean_num) when byte_size(clean_num) < 10 do
    "0000000000"
  end
  defp valid_check(clean_num), do: clean_num

  defp check_1(clean_num) do
    String.replace_prefix(clean_num, "1", "")
  end

  defp clean(raw), do: String.replace(raw, ~r/(\W)/, "")

  def area_code(raw) do
    String.slice(number(raw), 0..2)
  end

  def pretty(raw) do
    first_group = String.slice(number(raw), 3..5)
    second_group = String.slice(number(raw), 6..10)
    "(#{area_code(raw)}) #{first_group}-#{second_group}"
  end
end
