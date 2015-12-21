class UserContactNumsController < ApplicationController
  before_action :set_user_contact_num, only: [:show, :edit, :update, :destroy]

  # GET /user_contact_nums
  # GET /user_contact_nums.json
  def index
    @user_contact_nums = UserContactNum.all
  end

  # GET /user_contact_nums/1
  # GET /user_contact_nums/1.json
  def show
  end

  # GET /user_contact_nums/new
  def new
    @user_contact_num = UserContactNum.new
  end

  # GET /user_contact_nums/1/edit
  def edit
  end

  # POST /user_contact_nums
  # POST /user_contact_nums.json
  def create
    @user_contact_num = UserContactNum.new(user_contact_num_params)

    respond_to do |format|
      if @user_contact_num.save
        format.html { redirect_to @user_contact_num, notice: 'User contact num was successfully created.' }
        format.json { render :show, status: :created, location: @user_contact_num }
      else
        format.html { render :new }
        format.json { render json: @user_contact_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_contact_nums/1
  # PATCH/PUT /user_contact_nums/1.json
  def update
    respond_to do |format|
      if @user_contact_num.update(user_contact_num_params)
        format.html { redirect_to @user_contact_num, notice: 'User contact num was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_contact_num }
      else
        format.html { render :edit }
        format.json { render json: @user_contact_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_contact_nums/1
  # DELETE /user_contact_nums/1.json
  def destroy
    @user_contact_num.destroy
    respond_to do |format|
      format.html { redirect_to user_contact_nums_url, notice: 'User contact num was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_contact_num
      @user_contact_num = UserContactNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_contact_num_params
      params.require(:user_contact_num).permit(:user_id, :num)
    end
end
