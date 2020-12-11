class Member
  attr_reader :name, :affiliation
  def initialize(member_data)
    @name = member_data[:name]
    @photo = member_data[:photoUrl]
    @allies = member_data[:allies]
    @affiliation = member_data[:affiliation]
  end

  def photo
    if @photo.nil?
      'No Photo'
    else
      @photo
    end
  end

  def allies
    if @allies.empty?
      'No Allias'
    else
      @allies.join(', ')
    end
  end
end