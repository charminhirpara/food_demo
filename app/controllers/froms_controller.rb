class FromsController < ApplicationController
  before_action :set_from, only: %i[ show edit update destroy ]

  # GET /froms or /froms.json
  def index
    @froms = From.all
  end

  # GET /froms/1 or /froms/1.json
  def show
  end

  # GET /froms/new
  def new
    @from = From.new
  end

  # GET /froms/1/edit
  def edit
  end

  # POST /froms or /froms.json
  def create
    @from = From.new(from_params)

    respond_to do |format|
      if @from.save
        format.html { redirect_to from_url(@from), notice: "From was successfully created." }
        format.json { render :show, status: :created, location: @from }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @from.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /froms/1 or /froms/1.json
  def update
    respond_to do |format|
      if @from.update(from_params)
        format.html { redirect_to from_url(@from), notice: "From was successfully updated." }
        format.json { render :show, status: :ok, location: @from }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @from.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /froms/1 or /froms/1.json
  def destroy
    @from.destroy

    respond_to do |format|
      format.html { redirect_to froms_url, notice: "From was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_from
      @from = From.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def from_params
      params.fetch(:from, {})
    end
end
