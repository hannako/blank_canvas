require 'byebug'

class CanvasController < ApplicationController

  def index

  end

  def new
    @canva = Canva.new
    @choice = params[:selection]
  end

  def show
    @canva = Canva.find(params[:id])
  end

  def create
    @canva = Canva.create(canva_params)
    redirect_to "/canvas/#{@canva.id}"
  end

  private

  def canva_params
    params.require(:canva).permit(:image)
  end

end
