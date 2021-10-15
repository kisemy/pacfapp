class DashesController < ApplicationController
  before_action :set_dash, only: %i[ show edit update destroy ]

  # GET /dashes or /dashes.json
  def index
    @dashes = Dash.all
  end

  # GET /dashes/1 or /dashes/1.json
  def show
  end

  # GET /dashes/new
  def new
    @dash = Dash.new
  end

  # GET /dashes/1/edit
  def edit
  end

  # POST /dashes or /dashes.json
  def create
    @dash = Dash.new(dash_params)

    respond_to do |format|
      if @dash.save
        format.html { redirect_to @dash, notice: "Dash was successfully created." }
        format.json { render :show, status: :created, location: @dash }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashes/1 or /dashes/1.json
  def update
    respond_to do |format|
      if @dash.update(dash_params)
        format.html { redirect_to @dash, notice: "Dash was successfully updated." }
        format.json { render :show, status: :ok, location: @dash }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashes/1 or /dashes/1.json
  def destroy
    @dash.destroy
    respond_to do |format|
      format.html { redirect_to dashes_url, notice: "Dash was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dash
      @dash = Dash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dash_params
      params.require(:dash).permit(:no, :desc)
    end
end
