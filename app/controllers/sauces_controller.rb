class SaucesController < ApplicationController
  before_action :set_sauce, only: %i[ show edit update destroy ]

  # GET /sauces or /sauces.json
  def index
    @sauces = Sauce.all
  end

  # GET /sauces/1 or /sauces/1.json
  def show
  end

  # GET /sauces/new
  def new
    @sauce = Sauce.new
  end

  # GET /sauces/1/edit
  def edit
  end

  # POST /sauces or /sauces.json
  def create
    @sauce = Sauce.new(sauce_params)

    respond_to do |format|
      if @sauce.save
        format.html { redirect_to sauce_url(@sauce), notice: "Sauce was successfully created." }
        format.json { render :show, status: :created, location: @sauce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sauces/1 or /sauces/1.json
  def update
    respond_to do |format|
      if @sauce.update(sauce_params)
        format.html { redirect_to sauce_url(@sauce), notice: "Sauce was successfully updated." }
        format.json { render :show, status: :ok, location: @sauce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sauces/1 or /sauces/1.json
  def destroy
    @sauce.destroy

    respond_to do |format|
      format.html { redirect_to sauces_url, notice: "Sauce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sauce
      @sauce = Sauce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sauce_params
      params.require(:sauce).permit(:title, :description, :heat_level)
    end
end
