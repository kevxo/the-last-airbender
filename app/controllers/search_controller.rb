class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub!('_', '+').capitalize!
    @members = SearchFacade.members(nation)
  end
end