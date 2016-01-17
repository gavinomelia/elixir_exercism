defmodule Bob do
  def hey(input) do
    cond do
      nothing?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      yelling?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp nothing?(input) do
    String.strip(input) == ""
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling?(input) do
    all_caps?(input) && has_some_uppercase?(input)
  end

  defp all_caps?(input) do
    String.upcase(input) == input
  end

  defp has_some_uppercase?(input) do
    String.downcase(input) != input
  end

end
