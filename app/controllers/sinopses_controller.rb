class SinopsesController < ApplicationController
  before_action :set_sinopse, only: %i[ show edit update destroy ]

  # GET /sinopses or /sinopses.json
  def index
    @sinopses = Sinopse.all
  end

  # GET /sinopses/1 or /sinopses/1.json
  def show
  end

  # GET /sinopses/new
  def new
    @sinopse = Sinopse.new
  end

  # GET /sinopses/1/edit
  def edit
  end

  # POST /sinopses or /sinopses.json
  def create
    @sinopse = Sinopse.new(sinopse_params)

    respond_to do |format|
      if @sinopse.save
        format.html { redirect_to sinopse_url(@sinopse), notice: "Sinopse was successfully created." }
        format.json { render :show, status: :created, location: @sinopse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sinopse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinopses/1 or /sinopses/1.json
  def update
    respond_to do |format|
      if @sinopse.update(sinopse_params)
        format.html { redirect_to sinopse_url(@sinopse), notice: "Sinopse was successfully updated." }
        format.json { render :show, status: :ok, location: @sinopse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sinopse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinopses/1 or /sinopses/1.json
  def destroy
    @sinopse.destroy

    respond_to do |format|
      format.html { redirect_to sinopses_url, notice: "Sinopse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinopse
      @sinopse = Sinopse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sinopse_params
      params.require(:sinopse).permit(:texto, :livro_id, :livro_id)
    end
end
