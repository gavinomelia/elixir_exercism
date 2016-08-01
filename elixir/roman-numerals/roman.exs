defmodule Roman do
  @numeral_map %{1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I"}

  def numerals(number) do
    do_numerals(number, @numeral_map |> Map.to_list |> Enum.reverse, "")
  end

  def do_numerals(number, [], acc), do: acc
  def do_numerals(number, [{head, numeral}|tail], acc) do
    # IO.inspect head
    # IO.inspect tail
    # IO.puts "number: #{number}"
    # IO.inspect numeral
    {acc, number} =
      case div(number, head) do
        0 when number + number * 0.25 >= head -> {String.replace_suffix(acc, "", numeral),
        number - head}
        _ when div(number, head) < 0 -> {String.replace_prefix(acc, "", numeral), number + head}
        _ ->
        {String.replace_suffix(acc, "", String.duplicate(numeral, div(number, head))),
        number - head * div(number, head)}
      end
      # IO.inspect {acc, number}
      do_numerals(number, tail, acc)
    end
  end
