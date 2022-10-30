class SuscriptionsController < ApplicationController
  before_action :set_suscription, only: %i[ show edit update destroy ]

  # GET /suscriptions or /suscriptions.json
  def index
    @suscriptions = Suscription.all
  end

  # GET /suscriptions/1 or /suscriptions/1.json
  def show
  end

  # GET /suscriptions/new
  def new
    @suscription = Suscription.new
  end

  # GET /suscriptions/1/edit
  def edit
  end

  # POST /suscriptions or /suscriptions.json
  def create
    @suscription = Suscription.new(suscription_params)

    respond_to do |format|
      if @suscription.save
        format.html { redirect_to suscription_url(@suscription), notice: "Suscription was successfully created." }
        format.json { render :show, status: :created, location: @suscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suscriptions/1 or /suscriptions/1.json
  def update
    respond_to do |format|
      if @suscription.update(suscription_params)
        format.html { redirect_to suscription_url(@suscription), notice: "Suscription was successfully updated." }
        format.json { render :show, status: :ok, location: @suscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suscriptions/1 or /suscriptions/1.json
  def destroy
    @suscription.destroy

    respond_to do |format|
      format.html { redirect_to suscriptions_url, notice: "Suscription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suscription
      @suscription = Suscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suscription_params
      params.require(:suscription).permit(:name, :limit, :price)
    end
end
