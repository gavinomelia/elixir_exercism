defmodule School do
  def add(db, name, grade) do
      Map.update(db, grade, [name], fn(x) -> x ++ [name] end)
  end

  def grade(db, grade) do
    Map.get(db, grade, [])
  end

  def sort(db) do
    db
    |> Map.to_list
    |> Enum.map(fn({x, y}) -> {x, y |> Enum.sort} end)
  end
end
