defmodule Scrabble do
  @map %{"A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
  "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4,
  "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10}
  
  def score(word) do
    do_score(String.upcase(word), 0, 0, String.length(word))
  end

  def do_score(word, acc, acc2, length) when acc == length, do: acc2
  def do_score("", _, _, _), do: 0
  def do_score(word, acc, acc2, length) do
    letter = String.at(word, acc)
    case @map[letter] do
      nil -> do_score(word, acc + 1, acc2, length)
      _ -> do_score(word, acc + 1, acc2 + @map[letter], length)
    end
  end
end
