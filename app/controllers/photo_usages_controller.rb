class PhotoUsagesController < ApplicationController
  before_action :set_photo_usage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :new]

  include Pagy::Backend

  # GET /photo_usages
  # GET /photo_usages.csv
  def index
    @q = PhotoUsage.ransack(params[:q])
    @all_photo_usages = @q.result
    @pagy, @photo_usages = pagy(@all_photo_usages)
  end

  # GET /photo_usage/1
  # GET /photo_usage/1.json
  def show
    authorize @photo_usage
  end

  # GET /photo_usage/new
  def new
    @photo_usage = PhotoUsage.new
    authorize @photo_usage
  end

  # GET /covid_photos/1/edit
  def edit
    authorize @photo_usage
  end

  # POST /photo_usages
  # POST /photo_usages.json
  def create
    @photo_usage = PhotoUsage.new(photo_usage_params)
    @photo_usage.user = current_user
    respond_to do |format|
      if @photo_usage.save
        format.html { redirect_to @photo_usage, notice: 'Thank you for your submission!' }
        format.json { render :show, status: :created, location: @photo_usage }
      else
        format.html { render :new }
        format.json { render json: @photo_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_photo_usage
    @photo_usage = PhotoUsage.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def photo_usage_params
    params.require(:photo_usage).permit(:wikimedia_permission, :user_role_id, :acknowledgement, :signature, :cv_upload, :school_id, :photo )
  end
end
