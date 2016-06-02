defmodule Queens do
  @type t :: %Queens{ black: {integer, integer}, white: {integer, integer} }
  defstruct black: nil, white: nil

  @doc """
  Creates a new set of Queens
  """
  def new(white, black) do

  end

  @doc """
  Gives a string reprentation of the board with
  white and black queen locations shown
  """
  def to_string(queens) do

  end

  @doc """
  Checks if the queens can attack each other
  """
  def can_attack?(queens) do

  end
end
