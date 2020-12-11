class NationService
  def self.members_of_nation(nation)
    result = conn.get("/api/v1/characters?affiliation=#{nation}")
    JSON.parse(result.body, symbolize_names: true)
  end

  def self.conn
    conn = Faraday.new('https://last-airbender-api.herokuapp.com')
  end
end