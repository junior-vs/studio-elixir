defmodule MeuModulo.Loop do
    def tabuada(multiplicador) do
        lista_tab = []
        tabuada(multiplicador, 1, lista_tab)
    end

    defp tabuada(_, 11, lista_tab), do: lista_tab

    defp tabuada(produto1, produto2, lista_tab) do
        IO.puts("#{produto1} x #{produto2} = #{produto1 * produto2}")
        lista_tab = lista_tab ++ [produto1 * produto2]  
        tabuada(produto1, produto2 + 1, lista_tab)
    end
end