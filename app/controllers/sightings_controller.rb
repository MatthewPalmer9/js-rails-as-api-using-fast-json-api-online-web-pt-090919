class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    # render json: sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
    render json: SightingSerializer.new(sighting).to_json(:except => [:updated_at, :created_at])
  end
end
