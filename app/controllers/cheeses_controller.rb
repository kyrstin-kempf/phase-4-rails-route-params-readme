class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheeses using ID from URL
    # snd a JSON response using that cheese object
    # byebug 
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
