class AutorsController < ApplicationController
  before_action :set_autor, only: %i[ show edit update destroy ]

  # GET /autors or /autors.json
  def index
    @autors = Autor.all
  end

  # GET /autors/1 or /autors/1.json
  def show
  end

  # GET /autors/new
  def new
    @autor = Autor.new
  end

  # GET /autors/1/edit
  def edit
  end

  # POST /autors or /autors.json
  def create
    @autor = Autor.new(autor_params)
    params[:autor][:livro_ids].each do |l|
      @livro = Livro.find_by(id: l)
      if @livro
        @autor.livro << @livro
      end
    end

    respond_to do |format|
      if @autor.save
        format.html { redirect_to autor_url(@autor), notice: "Autor foi criado com sucesso." }
        format.json { render :show, status: :created, location: @autor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autors/1 or /autors/1.json
  def update
    # remove de todos os livros deste autor
    @autor.livro.each do |l|
      @autor.livro.delete(l)
    end
    # associa novos livros ao autor
    params[:autor][:livro_ids].each do |l|
      @livro = Livro.find_by(id: l)
      if @livro
        @autor.livro << @livro
      end
    end

    respond_to do |format|
      if @autor.update(autor_params)
        format.html { redirect_to autor_url(@autor), notice: "Autor foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @autor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autors/1 or /autors/1.json
  def destroy
    @autor.destroy

    respond_to do |format|
      format.html { redirect_to autors_url, notice: "Autor apagado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autor_params
      params.require(:autor).permit(:nome)
    end
end
