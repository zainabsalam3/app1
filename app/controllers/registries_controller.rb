class RegistriesController < ApplicationController
  before_action :set_registry, only: %i[ show edit update destroy ]

  # GET /registries or /registries.json
  def index
    @registries = Registry.all
  end

  # GET /registries/1 or /registries/1.json
  def show
  end

  # GET /registries/new
  def new
    @registry = Registry.new
  end

  # GET /registries/1/edit
  def edit
  end

  # POST /registries or /registries.json
  def create
    @registry = Registry.new(registry_params)

    respond_to do |format|
      if @registry.save
        format.html { redirect_to registry_url(@registry), notice: "Registry was successfully created." }
        format.json { render :show, status: :created, location: @registry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registries/1 or /registries/1.json
  def update
    respond_to do |format|
      if @registry.update(registry_params)
        format.html { redirect_to registry_url(@registry), notice: "Registry was successfully updated." }
        format.json { render :show, status: :ok, location: @registry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registries/1 or /registries/1.json
  def destroy
    @registry.destroy

    respond_to do |format|
      format.html { redirect_to registries_url, notice: "Registry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registry_params
      params.require(:registry).permit(:coordinator_id, :participant_id, :name, :location, :state)
    end


    #def toggle_state
      #if @registry.state?
        #@registry.create(state: true)
      #else
        #@registry.create(state: false)
      #end
    #end
end
