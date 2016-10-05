require 'mini_magick'

class CanvasController < ApplicationController
  include CreateColourPalette
  include ValidPhoto

  def index

  end

  def new
    @canva = Canva.new
    @svg = params[:room_choice]
  end

  def create
    @svg = params[:room_choice]
     @canva = Canva.create(canva_params)
     if @canva.save && valid_photo?
       if user_signed_in?
         current_user.canva << @canva
       end
       redirect_to canva_path(@canva, room_choice: @svg)
        # redirect to canva_paint
     else
        flash[:notice] = "Please select a valid picture"
        # redirect to canva_paint
       redirect_to new_canva_path(room_choice: @svg)
     end

  end

  def show
    @svg = params[:room_choice]
    @canva = Canva.find(params[:id])
    @color = create_palette
  end

  def paint
      @canva = Canva.find(params[:canva_id])
    if user_signed_in?
      @user = User.find(@canva.user_id)
    end
      @svg = params[:room_choice]
      @color = params[:colors]
      # @color = create_palette
      render :paint
  end

  def save
      @canva = Canva.find(params[:canva_id])
    if user_signed_in?
      @user = User.find(@canva.user_id)
    end
      @svg = params[:room_choice]
      @color = create_palette
      redirect_to canva_paint_path(@canva, room_choice: @svg)
  end


  private

  def canva_params
    if params[:canva].present?
      params.require(:canva).permit(:image, :room_choice)
    end
  end

end
