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
  alias ExMon.Game.{Status, Actions}

  @computer_name "Robok"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.buid(name, move_avg, move_rnd, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      # :move_heal -> Actions.heal()
      move -> Actions.attack(move)
    end

    #  Status.print_round_message(Game.info())
  end
end
