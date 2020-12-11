require 'rails_helper'

describe NationService do
  context "instance methods" do
    context "#members_by_nation" do
      it "returns member data" do
        search = NationService.members_of_nation("Fire Nation")
        expect(search).to be_an Array
        member_data = search.last

        expect(member_data).to have_key :name
        expect(member_data[:name]).to be_a(String)

        expect(member_data).to have_key :photoUrl
        expect(member_data[:photoUrl]).to be_a(String)

        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_a(Array)

        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a(String)
      end
    end
  end
end