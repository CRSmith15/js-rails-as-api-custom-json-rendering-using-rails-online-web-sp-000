class BirdsController < ApplicationController
  def index
    birds = Bird.all
    if bird 
      render json: birds, only: [:id, :name, :species]
    else 
      render json: { message: 'Bird not found' }
  end

  def show 
    bird = Bird.find_by(id: params[:id])
    render json: bird.slice(:id, :name, :species)
  end
end