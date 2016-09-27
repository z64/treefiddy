require "yaml"

module TreeFiddy
  class Config
    YAML.mapping(
      client_id: UInt64,
      token: String
    )
  end
end
