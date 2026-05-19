Dotenv.load()

token = System.get_env("TELEGRAM_TOKEN")

response = Req.get!("https://api.telegram.org/bot#{token}/getUpdates")

last_update = List.last(response.body["result"])
