defmodule Roman do
  @numeral_map %{1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}

  def numerals(number) do
    @numeral_map
    |> Map.to_list
    |> Enum.reverse
    |> Enum.scan(fn({num, numeral}, {acc_num, acc_numeral}) ->
      get_numeral(number, {num, numeral}, {acc_num, acc_numeral})
    end)
  end

  def get_numeral(number, {num, numeral}, _) when number / num <= 1 and number / num >= 3 do
    String.duplicate(numeral, number / num)
  end
  def get_numeral(number, {num, numeral}, {acc_num, acc_numeral}) when number / num < 3 do

  end
  def get_numeral(number, _, _) do
    number
  end






















  # def numerals(number) do
  #   do_numerals(number, @numeral_map |> Map.to_list |> Enum.reverse, "")
  # end
  #
  # def do_numerals(_, [], acc), do: acc
  # def do_numerals(number, [{head, numeral}|tail], acc) do
  #   IO.puts "head: #{head}"
  #   IO.inspect tail
  #   IO.puts "number: #{number}"
  #   IO.puts "numeral: #{numeral}"
  #   {acc, number} =
  #     cond div(number, head) do
  #       div(number, head) <= 0 when number + number * 0.25 >= head -> {String.replace_suffix(acc, "", numeral),
  #       number - head}
  #       _ when div(number, head) < 0 -> {String.replace_prefix(acc, "", numeral), number + head}
  #       _ ->
  #       {String.replace_suffix(acc, "", String.duplicate(numeral, div(number, head))),
  #       number - head * div(number, head)}
  #     end
  #     IO.inspect {acc, number}
  #     do_numerals(number, tail, acc)
  #   end
end
