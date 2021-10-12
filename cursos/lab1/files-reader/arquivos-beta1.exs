defmodule MeuModulo.ArquivosBeta1 do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, erro } ->  "Aconteceu  algum erro: " + erro
    end
  end
end
