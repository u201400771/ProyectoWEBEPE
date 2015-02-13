class SubcategoriasController < ApplicationController
  before_action :set_subcategoria, only: [:show, :edit, :update, :destroy]

  # GET /subcategorias
  # GET /subcategorias.json
  def index
    @subcategorias = Subcategoria.all
    @menu = "menu1"
  end

  # GET /subcategorias/1
  # GET /subcategorias/1.json
  def show
    @menu = "menu1"  
  end

  # GET /subcategorias/new
  def new
    @subcategoria = Subcategoria.new
    @menu = "menu1"
  end

  # GET /subcategorias/1/edit
  def edit
    @menu = "menu1"
  end

  # POST /subcategorias
  # POST /subcategorias.json
  def create
    @subcategoria = Subcategoria.new(subcategoria_params)

    respond_to do |format|
      if @subcategoria.save
        format.html { redirect_to @subcategoria, notice: 'Subcategoria creada satisfactoriamente' }
        format.json { render :show, status: :created, location: @subcategoria }
      else
        format.html { render :new }
        format.json { render json: @subcategoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategorias/1
  # PATCH/PUT /subcategorias/1.json
  def update
    respond_to do |format|
      if @subcategoria.update(subcategoria_params)
        format.html { redirect_to @subcategoria, notice: 'Subcategoria actualizada satisfactoriamente' }
        format.json { render :show, status: :ok, location: @subcategoria }
      else
        format.html { render :edit }
        format.json { render json: @subcategoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategorias/1
  # DELETE /subcategorias/1.json
  def destroy
    @subcategoria.destroy
    respond_to do |format|
      format.html { redirect_to subcategorias_url, notice: 'Subcategoria eliminada satisfactoriamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategoria
      @subcategoria = Subcategoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategoria_params
      params.require(:subcategoria).permit(:name, :categoria_id)
    end
end
