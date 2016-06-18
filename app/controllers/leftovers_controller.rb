class LeftoversController < ApplicationController
  before_action :set_leftover, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /leftovers
  # GET /leftovers.json
  def index
    @leftovers = Leftover.all
  end

  # GET /leftovers/1
  # GET /leftovers/1.json
  def show
  end

  # GET /leftovers/new
  def new
    @leftover = current_user.leftovers.build
  end

  # GET /leftovers/1/edit
  def edit
  end

  # POST /leftovers
  # POST /leftovers.json
  def create
    @leftover = current_user.leftovers.build(leftover_params)
    @leftover.current_quantity =  @leftover.quantity
    @leftover.lat = @leftover.location.to_s.split(',')[0]
    @leftover.lng = @leftover.location.to_s.split(',')[1]
    respond_to do |format|
      if @leftover.save
        format.html { redirect_to @leftover, notice: 'Leftover was successfully created.' }
        format.json { render :show, status: :created, location: @leftover }
      else
        format.html { render :new }
        format.json { render json: @leftover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leftovers/1
  # PATCH/PUT /leftovers/1.json
  def update
    respond_to do |format|
      if @leftover.update(leftover_params)
        format.html { redirect_to @leftover, notice: 'Leftover was successfully updated.' }
        format.json { render :show, status: :ok, location: @leftover }
      else
        format.html { render :edit }
        format.json { render json: @leftover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leftovers/1
  # DELETE /leftovers/1.json
  def destroy
    @leftover.destroy
    respond_to do |format|
      format.html { redirect_to leftovers_url, notice: 'Leftover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leftover
      @leftover = Leftover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leftover_params
      params.require(:leftover).permit(:title, :address, :location, :pincode, :quantity, :food_type, :available_from, :available_to, :status, :user_id)
    end
end
