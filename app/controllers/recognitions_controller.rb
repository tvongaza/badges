class RecognitionsController < ApplicationController
  before_action :set_recognition, only: [:show, :edit, :update, :destroy]

  # GET /recognitions
  # GET /recognitions.json
  def index
    @recognitions = Recognition.all
  end

  # GET /recognitions/1
  # GET /recognitions/1.json
  def show
  end

  # GET /recognitions/new
  def new
    @recognition = Recognition.new
  end

  # GET /recognitions/1/edit
  def edit
  end

  # POST /recognitions
  # POST /recognitions.json
  def create
    @recognition = Recognition.new(recognition_params)

    respond_to do |format|
      if @recognition.save
        format.html { redirect_to @recognition, notice: 'Recognition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recognition }
      else
        format.html { render action: 'new' }
        format.json { render json: @recognition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recognitions/1
  # PATCH/PUT /recognitions/1.json
  def update
    respond_to do |format|
      if @recognition.update(recognition_params)
        format.html { redirect_to @recognition, notice: 'Recognition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recognition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recognitions/1
  # DELETE /recognitions/1.json
  def destroy
    @recognition.destroy
    respond_to do |format|
      format.html { redirect_to recognitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recognition
      @recognition = Recognition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recognition_params
      params[:recognition]
    end
end
