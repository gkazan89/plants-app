class Api::PlantsController < ApplicationController
  def index 
    response = Unirest.get("http://strainapi.evanbusse.com/#{ENV["plantKey"]}/strains/search/all")
    render json: response.body
  end

  def effects
    response = Unirest.get("http://strainapi.evanbusse.com/#{ENV["plantKey"]}/searchdata/effects")
    render json: response.body
  end
end
