class EvsController < ApplicationController
  before_action :set_ev, only: [:show, :edit, :update, :destroy]

  # GET /evs
  # GET /evs.json
  def index
    #@evs = Ev.all
    evs = Ev.all
    render :html => evs
  end

  # GET /evs/1
  # GET /evs/1.json
  def show
  end

  # GET /evs/new
  def new
    @ev = Ev.new
  end

  # GET /evs/1/edit
  def edit
  end

  # POST /evs
  # POST /evs.json
  def create
    @ev = Ev.new(ev_params)

    respond_to do |format|
      if @ev.save
        format.html { redirect_to @ev, notice: 'Ev was successfully created.' }
        format.json { render :show, status: :created, location: @ev }
      else
        format.html { render :new }
        format.json { render json: @ev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evs/1
  # PATCH/PUT /evs/1.json
  def update
    respond_to do |format|
      if @ev.update(ev_params)
        format.html { redirect_to @ev, notice: 'Ev was successfully updated.' }
        format.json { render :show, status: :ok, location: @ev }
      else
        format.html { render :edit }
        format.json { render json: @ev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evs/1
  # DELETE /evs/1.json
  def destroy
    @ev.destroy
    respond_to do |format|
      format.html { redirect_to evs_url, notice: 'Ev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ev
      @ev = Ev.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ev_params
      params.require(:ev).permit(:eng, :vni)
    end
end
