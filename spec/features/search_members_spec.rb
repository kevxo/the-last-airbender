require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'When I visit /' do
    describe "And select fire nation and click 'Search For Members'" do
      it 'should be on /search and see the total number of people who live in the Fire nation with all their info' do
        visit '/'

        within '.collapse-navbar-collapse' do
          page.select 'Fire Nation', from: :nation
          click_button 'Search For Members'
        end

        expect(current_path).to eq(search_path)

        expect(page).to have_content('Members: there are 20 total')

        within(first(".member")) do
          expect(page).to have_css(".name")
          expect(page).to have_css(".photo")
          expect(page).to have_css(".allies")
          expect(page).to have_css(".affiliation")
        end
      end
    end
  end
end