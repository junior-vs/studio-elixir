defmodule MeuModulo do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]
    def ola_mundo do 
        inspect("Ola, Mundo")
    end

    def inspect(parametro) do   
        puts("Començando a inspeção")
        puts(parametro)
        puts("Terminando a inspeção")
    end
    
end