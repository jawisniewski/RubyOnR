class RansController < ApplicationController
  before_action :set_ran, only: [:show, :edit, :update, :destroy]

  # GET /rans
  # GET /rans.json
  def index
    @rans = Ran.all
  end

  # GET /rans/1
  # GET /rans/1.json
  def show
  end

  # GET /rans/new
  def new
    @ran = Ran.new

  end

  # GET /rans/1/edit
  def edit
  end

  # POST /rans
  # POST /rans.json
  def create

    @ran = Ran.new(ran_params)

    respond_to do |format|
      if @ran.save
        format.html { redirect_to @ran, notice: 'Ran was successfully created.' }
        format.json { render :show, status: :created, location: @ran }
      else
        format.html { render :new }
        format.json { render json: @ran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rans/1
  # PATCH/PUT /rans/1.json
  def update
    respond_to do |format|
      if @ran.update(ran_params)
        format.html { redirect_to @ran, notice: 'Ran was successfully updated.' }
        format.json { render :show, status: :ok, location: @ran }
      else
        format.html { render :edit }
        format.json { render json: @ran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rans/1
  # DELETE /rans/1.json
  def destroy
    @ran.destroy
    respond_to do |format|
      format.html { redirect_to rans_url, notice: 'Ran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ran
      @ran = Ran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ran_params
      params.require(:ran).permit(:name, :cars_id)
    end
end
