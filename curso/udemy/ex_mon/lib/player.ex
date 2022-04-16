defmodule ExMon.Player do
  @required_keys [:life, :name, :move_avg, :move_heal, :move_rnd ]
  @max_live 100

  @enforce_keys @required_keys
  defstruct @required_keys


  def buid(name, move_avg, move_heal, move_rnd ) do
    %ExMon.Player{
      life: @max_live,
      name: name,
      move_avg: move_avg,
      move_heal: move_heal,
      move_rnd: move_rnd

    }
  end
end
