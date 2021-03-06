class DebatesController < ApplicationController
  before_action :set_debate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /debates
  # GET /debates.json
  def index
    @user = User.all
    # Users can view all debates
    @search = Debate.search(params[:q])
    # Seting up the search params
    @debates = @search.result
    # For the search functionality above.
  end

  # GET /debates/1
  # GET /debates/1.json
  def show
    @submission = Submission.new
    @debate = Debate.find(params[:id])
    @submissions = @debate.submissions
    @pro_submissions = @debate.submissions.where(:sub_type => "pro")
    @con_submissions = @debate.submissions.where(:sub_type => "con")
  end

  # GET /debates/new
  def new
    @debate = Debate.new
  end

  # GET /debates/1/edit
  def edit
    @debate = current_user.debates.find(params[:id])
  end

  # POST /debates
  # POST /debates.json
  def create
    @debate = Debate.new(debate_params)
    @debate.user_id = current_user.id

    respond_to do |format|
      if @debate.save
        format.html { redirect_to @debate, notice: 'Debate was successfully created.' }
        format.json { render :show, status: :created, location: @debate }
      else
        format.html { render :new }
        format.json { render json: @debate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debates/1
  # PATCH/PUT /debates/1.json
  def update
    authorize @debate

    respond_to do |format|
      if @debate.update(debate_params)
        format.html { redirect_to @debate, notice: 'Debate was successfully updated.' }
        format.json { render :show, status: :ok, location: @debate }
      else
        format.html { render :edit }
        format.json { render json: @debate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debates/1
  # DELETE /debates/1.json
  def destroy
    @debate.destroy
    respond_to do |format|
      format.html { redirect_to debates_url, notice: 'Debate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debate
      @debate = Debate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debate_params
      params.require(:debate).permit(:topic, :image, :description, :user_id)
    end
end
