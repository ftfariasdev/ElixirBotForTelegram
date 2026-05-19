import Config

if File.exists?(".env") do
  File.stream!(".env")
  |> Enum.each(fn line ->
    case String.split(String.trim(line), "=", parts: 2) do
      [key, value] -> System.put_env(key, value)
      _ -> :ok
    end
  end)
end

config :elixir_bot_for_telegram,
  telegram_token: System.get_env("TELEGRAM_TOKEN")

