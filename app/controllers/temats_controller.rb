class TematsController < ApplicationController
  before_action :set_temat, only: [:show, :edit, :update, :destroy]

  # GET /temats
  # GET /temats.json
  def index
    @temat = Temat.all
  end

  def show
    @temat = Temat.find(params[:id])
  end

  def spis
    @temats = Temat.all
  end

  # GET /temats/new
  def new
    @temat = Temat.new
  end

  # GET /temats/1/edit
  def edit
  end

  # POST /temats
  # POST /temats.json
  def create
    @temat = Temat.new(temat_params)
    respond_to do |format|
      if @temat.save
        format.html { redirect_to @temat, notice: 'Temat was successfully created.' }
        format.json { render :show, status: :created, location: @temat }
      else
        format.html { render :new }
        format.json { render json: @temat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temats/1
  # PATCH/PUT /temats/1.json
  def update
    respond_to do |format|
      if @temat.update(temat_params)
        format.html { redirect_to @temat, notice: 'Temat was successfully updated.' }
        format.json { render :show, status: :ok, location: @temat }
      else
        format.html { render :edit }
        format.json { render json: @temat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temats/1
  # DELETE /temats/1.json
  def destroy
    @temat.destroy
    respond_to do |format|
      format.html { redirect_to temats_url, notice: 'Temat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temat
      @temat = Temat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temat_params
      params.require(:temat).permit(:title, :description)
    end
end
