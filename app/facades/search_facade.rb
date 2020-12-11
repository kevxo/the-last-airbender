class SearchFacade
  def self.members(nation)
    json = NationService.members_of_nation(nation)
    json.map do |member_data|
      Member.new(member_data)
    end
  end
end