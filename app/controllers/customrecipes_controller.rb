class CustomrecipesController < ApplicationController
  before_action :set_customrecipe, only: [:show, :update, :destroy]

  # GET /customrecipes
  def index
    @customrecipes = Customrecipe.all

    render json: @customrecipes
  end

  # GET /customrecipes/1
  def show
    render json: @customrecipe
  end

  # POST /customrecipes
  def create
    @customrecipe = Customrecipe.new(customrecipe_params)

    if @customrecipe.save
      render json: @customrecipe, status: :created, location: @customrecipe
    else
      render json: @customrecipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customrecipes/1
  def update
    if @customrecipe.update(customrecipe_params)
      render json: @customrecipe
    else
      render json: @customrecipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customrecipes/1
  def destroy
    @customrecipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customrecipe
      @customrecipe = Customrecipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customrecipe_params
      params.require(:customrecipe).permit(:title, :image, :ingredients, :instructions, :readyInMinutes, :servings, :user_id)
    end
end
