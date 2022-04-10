defmodule MeuModulo.ArquivosBeta2 do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} ->
        IO.puts(conteudo)

      {:error, erro} ->
        case erro do
          :enoent -> "arquivo  inexistente"
          :eacces -> "arquivos se permissao"
          _ -> "outro  erro"
        end
    end
  end
end
