module TreeFiddy
  module Event
    module Ping
      extend self
  
      def speed(a : Time, b : Time) : Float64
        (a - b).milliseconds / 100.0
      end

      def register(client)
        client.on_message_create do |message|
          if message.content.starts_with? "!ping"
            time = speed(Time.now, message.timestamp)
            client.create_message(message.channel_id, "`#{time}ms`")
          end
        end
      end

    end
  end
end
