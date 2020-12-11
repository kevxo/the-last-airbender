require 'rails_helper'

RSpec.describe Member do
  it 'exists' do
    attrs = {
      name: 'Zuko',
      allies: ['Ang'],
      affiliation: 'Fire Nation'
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Zuko")
    expect(member.photo).to eq("No Photo")
    expect(member.allies).to eq("Ang")
    expect(member.affiliation).to eq('Fire Nation')
  end

  it 'has a photo attribute' do
    attrs = {
      name: 'Circus Master',
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819',
      allies: ['Ty Lee'],
      affiliation: 'Fire Nation Circus'
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Circus Master")
    expect(member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    expect(member.allies).to eq("Ty Lee")
    expect(member.affiliation).to eq('Fire Nation Circus')
  end
end