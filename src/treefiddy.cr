require "discordcr"
require "./treefiddy/*"

module TreeFiddy
  # Bot configuration
  CONFIG = Config.from_yaml(File.read("data/config.yml"))

  # Create the bot
  BOT = Bot.new(CONFIG.token, CONFIG.client_id)

  # Ping
  BOT.client.on_message_create do |payload|
    if payload.content.starts_with? "!ping"
      BOT.client.create_message(payload.channel_id, "Pong!")
    end
  end

  # Run the bot
  BOT.run!
end
