defmodule MeuModulo.ArquivosBeta3 do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "arquivo  inexistente"
      {:error, :eacces} -> "arquivos se permissao"
      _ -> "outro  erro"
    end
  end
end
