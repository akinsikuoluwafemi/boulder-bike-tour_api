class Api::V1::SlogansController < ApplicationController
  before_action :set_slogan, only: [:show, :update, :destroy]

  # GET /slogans
  def index
    @slogans = Slogan.all

    render json: @slogans
  end

  # GET /slogans/1
  def show
    render json: @slogan
  end

  # POST /slogans
  def create

    @slogan = Slogan.new(slogan_params)
    
    if @slogan.save
      # render json: @slogan, status: :created, location: api_v1_slogans_path(@slogan)
      render json: @slogan, status: :created, location: @slogan)

    else
      render json: @slogan.errors, status: :unprocessable_entity 
      # render json: { status: :unprocessable_entity, errors: @slogan.errors }
    end
  end

  # PATCH/PUT /slogans/1
  def update
    if @slogan.update(slogan_params)
      render json: @slogan
    else
      render json: @slogan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /slogans/1
  def destroy
    @slogan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slogan
      @slogan = Slogan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def slogan_params
      params.require(:slogan).permit(:first_name,:last_name,:email,:content)
    end
end
