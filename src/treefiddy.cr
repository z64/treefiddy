require "discordcr"
require "./treefiddy/*"

module TreeFiddy
  # Bot configuration
  CONFIG = Config.from_yaml(File.read("data/config.yml"))

  # Create the bot
  BOT = Bot.new(CONFIG.token, CONFIG.client_id)

  # Register events
  Event::Ping.register(BOT.client)
  Event::Add.register(BOT.client)

  # Run the bot
  BOT.run!
end
