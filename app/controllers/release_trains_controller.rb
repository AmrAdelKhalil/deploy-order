class ReleaseTrainsController < ApplicationController
  before_action :set_release_train, only: %i[ show edit update destroy ]

  # GET /release_trains or /release_trains.json
  def index
    @release_trains = ReleaseTrain.all
  end

  # GET /release_trains/1 or /release_trains/1.json
  def show
  end

  # GET /release_trains/new
  def new
    @release_train = ReleaseTrain.new
  end

  # GET /release_trains/1/edit
  def edit
  end

  # POST /release_trains or /release_trains.json
  def create
    @release_train = ReleaseTrain.new(release_train_params)

    respond_to do |format|
      if @release_train.save
        format.html { redirect_to release_train_url(@release_train), notice: "Release train was successfully created." }
        format.json { render :show, status: :created, location: @release_train }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @release_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /release_trains/1 or /release_trains/1.json
  def update
    respond_to do |format|
      if @release_train.update(release_train_params)
        format.html { redirect_to release_train_url(@release_train), notice: "Release train was successfully updated." }
        format.json { render :show, status: :ok, location: @release_train }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @release_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_trains/1 or /release_trains/1.json
  def destroy
    @release_train.destroy

    respond_to do |format|
      format.html { redirect_to release_trains_url, notice: "Release train was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release_train
      @release_train = ReleaseTrain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def release_train_params
      params.require(:release_train).permit(:engineering_manager, :backend, :rt_date)
    end
end
