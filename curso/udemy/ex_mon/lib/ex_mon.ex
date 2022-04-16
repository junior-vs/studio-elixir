defmodule ExMon do
  @moduledoc """
  Documentation for `ExMon`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExMon.hello()
      :world

  """

  alias ExMon.{Player, Game}
  @computer_name "Robok"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.buid(name, move_avg, move_rnd, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)
  end
end
