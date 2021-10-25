defmodule MeuModulo.Tabuada do
    def calcula(multiplicador) do 
        tabuada(multiplicador, 1)
    end

    def tabuada(produto1, produto2) do 
    [produto1 * produto2] ++ tabuada(produto1, produto2)
    end

end