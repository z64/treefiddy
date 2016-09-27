module TreeFiddy
  class Bot
    def initialize(token, client_id)
      @client = Discord::Client.new(token: token, client_id: client_id)
    end

    def run!
      @client.run
    end
  end
end

