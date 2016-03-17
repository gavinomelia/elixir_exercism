defmodule DNA do
  def to_rna(dna) do
    dna_rna_map = %{?G => 'C', ?C => 'G', ?T => 'A', ?A => 'U'}
    Enum.flat_map(dna, fn(x) -> Map.fetch!(dna_rna_map, x) end)
  end
end
