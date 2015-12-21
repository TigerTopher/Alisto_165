class AnonReportsController < ApplicationController
  before_action :set_anon_report, only: [:show, :edit, :update, :destroy]

  # GET /anon_reports
  # GET /anon_reports.json
  def index
    @anon_reports = AnonReport.all
  end

  # GET /anon_reports/1
  # GET /anon_reports/1.json
  def show
  end

  # GET /anon_reports/new
  def new
    @anon_report = AnonReport.new
  end

  # GET /anon_reports/1/edit
  def edit
  end

  # POST /anon_reports
  # POST /anon_reports.json
  def create
    @anon_report = AnonReport.new(anon_report_params)
    @anon_report.coordinate_x = 121.06544942 
    @anon_report.coordinate_y = 14.65199529
    @anon_report.classification_id = 1
    @anon_report.date_issued = DateTime.now()
    respond_to do |format|
      if @anon_report.save
        format.html { redirect_to @anon_report, notice: 'Anon report was successfully created.' }
        format.json { render :show, status: :created, location: @anon_report }
      else
        format.html { render :new }
        format.json { render json: @anon_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anon_reports/1
  # PATCH/PUT /anon_reports/1.json
  def update
    respond_to do |format|
      if @anon_report.update(anon_report_params)
        format.html { redirect_to @anon_report, notice: 'Anon report was successfully updated.' }
        format.json { render :show, status: :ok, location: @anon_report }
      else
        format.html { render :edit }
        format.json { render json: @anon_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anon_reports/1
  # DELETE /anon_reports/1.json
  def destroy
    @anon_report.destroy
    respond_to do |format|
      format.html { redirect_to anon_reports_url, notice: 'Anon report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anon_report
      @anon_report = AnonReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anon_report_params
      params.require(:anon_report).permit(:title, :coordinate_x, :coordinate_y, :short_desc, :classification, :date_issued, :full_report)
    end
end
