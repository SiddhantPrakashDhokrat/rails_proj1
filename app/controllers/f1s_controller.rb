class F1sController < ApplicationController
  before_action :set_f1, only: %i[ show edit update destroy ]

  # GET /f1s or /f1s.json
  def index
    @f1s = F1.all
  end

  # GET /f1s/1 or /f1s/1.json
  def show
  end

  # GET /f1s/new
  def new
    @f1 = F1.new
  end

  # GET /f1s/1/edit
  def edit
  end

  # POST /f1s or /f1s.json
  def create
    @f1 = F1.new(f1_params)

    respond_to do |format|
      if @f1.save
        format.html { redirect_to @f1, notice: "F1 was successfully created." }
        format.json { render :show, status: :created, location: @f1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @f1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f1s/1 or /f1s/1.json
  def update
    respond_to do |format|
      if @f1.update(f1_params)
        format.html { redirect_to @f1, notice: "F1 was successfully updated." }
        format.json { render :show, status: :ok, location: @f1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @f1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f1s/1 or /f1s/1.json
  def destroy
    @f1.destroy
    respond_to do |format|
      format.html { redirect_to f1s_url, notice: "F1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f1
      @f1 = F1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f1_params
      params.require(:f1).permit(:Name, :Email, :phone)
    end
end
