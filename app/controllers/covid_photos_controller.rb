class CovidPhotosController < ApplicationController
  before_action :set_covid_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :new]

  # GET /covid_photos
  # GET /covid_photos.json
  def index
    @covid_photos = CovidPhoto.all
  end

  # GET /covid_photos/1
  # GET /covid_photos/1.json
  def show
  end

  # GET /covid_photos/new
  def new
    @covid_photo = CovidPhoto.new
    authorize @covid_photo
  end

  # GET /covid_photos/1/edit
  def edit
  end

  # POST /covid_photos
  # POST /covid_photos.json
  def create
    @covid_photo = CovidPhoto.new(covid_photo_params)
    # @covid_photo.topics = Topics.find(@params[:topic_ids]) if @params[:topic_ids]

    respond_to do |format|
      if @covid_photo.save
        format.html { redirect_to @covid_photo, notice: 'Thank you for your submission!' }
        format.json { render :show, status: :created, location: @covid_photo }
      else
        format.html { render :new }
        format.json { render json: @covid_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_photos/1
  # PATCH/PUT /covid_photos/1.json
  def update
    respond_to do |format|
      if @covid_photo.update(covid_photo_params)
        format.html { redirect_to @covid_photo, notice: 'Covid photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @covid_photo }
      else
        format.html { render :edit }
        format.json { render json: @covid_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_photos/1
  # DELETE /covid_photos/1.json
  def destroy
    @covid_photo.destroy
    respond_to do |format|
      format.html { redirect_to covid_photos_url, notice: 'Covid photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_covid_photo
    @covid_photo = CovidPhoto.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def covid_photo_params
    params.require(:covid_photo).permit(:date_taken, :location, :author_first, :author_last, :information, :submit_name, :submit_email, :other_topic, :photo, topic_ids: [])
  end
end
