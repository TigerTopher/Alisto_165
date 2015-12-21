class SyndicatesController < ApplicationController
  before_action :set_syndicate, only: [:show, :edit, :update, :destroy]

  # GET /syndicates
  # GET /syndicates.json
  def index
    @syndicates = Syndicate.all
  end

  # GET /syndicates/1
  # GET /syndicates/1.json
  def show
  end

  # GET /syndicates/new
  def new
    @syndicate = Syndicate.new
  end

  # GET /syndicates/1/edit
  def edit
  end

  # POST /syndicates
  # POST /syndicates.json
  def create
    @syndicate = Syndicate.new(syndicate_params)

    respond_to do |format|
      if @syndicate.save
        format.html { redirect_to @syndicate, notice: 'Syndicate was successfully created.' }
        format.json { render :show, status: :created, location: @syndicate }
      else
        format.html { render :new }
        format.json { render json: @syndicate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syndicates/1
  # PATCH/PUT /syndicates/1.json
  def update
    respond_to do |format|
      if @syndicate.update(syndicate_params)
        format.html { redirect_to @syndicate, notice: 'Syndicate was successfully updated.' }
        format.json { render :show, status: :ok, location: @syndicate }
      else
        format.html { render :edit }
        format.json { render json: @syndicate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syndicates/1
  # DELETE /syndicates/1.json
  def destroy
    @syndicate.destroy
    respond_to do |format|
      format.html { redirect_to syndicates_url, notice: 'Syndicate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syndicate
      @syndicate = Syndicate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syndicate_params
      params.require(:syndicate).permit(:name, :overview, :report_count)
    end
end
