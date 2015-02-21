class InflationRatesController < ApplicationController
  before_action :set_inflation_rate, only: [:show, :edit, :update, :destroy]

  # GET /inflation_rates
  # GET /inflation_rates.json
  def index
    @inflation_rates = InflationRate.all
  end

  # GET /inflation_rates/1
  # GET /inflation_rates/1.json
  def show
  end

  # GET /inflation_rates/new
  def new
    @inflation_rate = InflationRate.new
  end

  # GET /inflation_rates/1/edit
  def edit
  end

  # POST /inflation_rates
  # POST /inflation_rates.json
  def create
    @inflation_rate = InflationRate.new(inflation_rate_params)

    respond_to do |format|
      if @inflation_rate.save
        format.html { redirect_to @inflation_rate, notice: 'Inflation rate was successfully created.' }
        format.json { render :show, status: :created, location: @inflation_rate }
      else
        format.html { render :new }
        format.json { render json: @inflation_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inflation_rates/1
  # PATCH/PUT /inflation_rates/1.json
  def update
    respond_to do |format|
      if @inflation_rate.update(inflation_rate_params)
        format.html { redirect_to @inflation_rate, notice: 'Inflation rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @inflation_rate }
      else
        format.html { render :edit }
        format.json { render json: @inflation_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inflation_rates/1
  # DELETE /inflation_rates/1.json
  def destroy
    @inflation_rate.destroy
    respond_to do |format|
      format.html { redirect_to inflation_rates_url, notice: 'Inflation rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inflation_rate
      @inflation_rate = InflationRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inflation_rate_params
      params.require(:inflation_rate).permit(:month, :year, :percent)
    end
end
