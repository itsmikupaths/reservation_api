class Api::V1::GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :update, :destroy]

  def index
    @guests = Guest.all

    render json: @guests
  end

  def show
    render json: @guest
  end

  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      render json: @guest, status: :created, location: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
    end
  end

  def update
    if @guest.update(guest_params)
      render json: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @guest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guest_params
      params.require(:guest).permit(:email, :first_name, :last_name, :guest_count, :adult_count, :children_count, :infant_count)
    end
end
