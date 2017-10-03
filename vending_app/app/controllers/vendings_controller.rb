class VendingsController < ApplicationController
  before_action :set_vending, only: [:show, :edit, :update, :destroy]

  # GET /vendings
  # GET /vendings.json
  def index
    @vendings = Vending.all
  end

  # GET /vendings/1
  # GET /vendings/1.json
  def show
  end

  # GET /vendings/new
  def new
    @vending = Vending.new
  end

  # GET /vendings/1/edit
  def edit
  end

  # POST /vendings
  # POST /vendings.json
  def create
    @vending = Vending.new(vending_params)

    respond_to do |format|
      if @vending.save
        format.html { redirect_to @vending, notice: 'Vending was successfully created.' }
        format.json { render :show, status: :created, location: @vending }
      else
        format.html { render :new }
        format.json { render json: @vending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendings/1
  # PATCH/PUT /vendings/1.json
  def update
    respond_to do |format|
      if @vending.update(vending_params)
        format.html { redirect_to @vending, notice: 'Vending was successfully updated.' }
        format.json { render :show, status: :ok, location: @vending }
      else
        format.html { render :edit }
        format.json { render json: @vending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendings/1
  # DELETE /vendings/1.json
  def destroy
    @vending.destroy
    respond_to do |format|
      format.html { redirect_to vendings_url, notice: 'Vending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vending
      @vending = Vending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vending_params
      params.require(:vending).permit(:snack, :code, :price, :kind_id)
    end
end
