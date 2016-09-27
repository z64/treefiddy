module TreeFiddy
  module Event
    module Add
      COMMAND = "!add"

      extend self

      def parse(message : String) : Array
        m = message.split(" ") - [COMMAND]
        m = m.map { |e| e.to_i }
        m
      end

      def register(client)
        client.on_message_create do |message|
          if message.content.starts_with? COMMAND
            args = parse(message.content)
            total = 0
            args.each do |i|
              total += i
            end
            client.create_message(message.channel_id, total.to_s)
          end
        end
      end
    end
  end
end
