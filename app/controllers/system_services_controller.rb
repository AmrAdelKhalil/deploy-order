class SystemServicesController < ApplicationController
  before_action :set_system_service, only: %i[ show edit update destroy ]

  # GET /system_services or /system_services.json
  def index
    @system_services = SystemService.all
  end

  # GET /system_services/1 or /system_services/1.json
  def show
  end

  # GET /system_services/new
  def new
    @system_service = SystemService.new
  end

  # GET /system_services/1/edit
  def edit
  end

  # POST /system_services or /system_services.json
  def create
    @system_service = SystemService.new(system_service_params)

    respond_to do |format|
      if @system_service.save
        format.html { redirect_to system_service_url(@system_service), notice: "System service was successfully created." }
        format.json { render :show, status: :created, location: @system_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @system_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_services/1 or /system_services/1.json
  def update
    respond_to do |format|
      if @system_service.update(system_service_params)
        format.html { redirect_to system_service_url(@system_service), notice: "System service was successfully updated." }
        format.json { render :show, status: :ok, location: @system_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @system_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_services/1 or /system_services/1.json
  def destroy
    @system_service.destroy

    respond_to do |format|
      format.html { redirect_to system_services_url, notice: "System service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_service
      @system_service = SystemService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def system_service_params
      params.require(:system_service).permit(:name, :tribe, :squad)
    end
end
