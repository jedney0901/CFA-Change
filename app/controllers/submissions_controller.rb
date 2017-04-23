class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = Submission.new
    @debate = Debate.find(params[:id])
    @submissions = @debate.submissions
  end

  # GET /submissions/new
  def pro
    @submission = Submission.new
    @submission.user_id = current_user.id
    @submission.sub_type = 'pro'
    @submission.debate = Debate.find(params[:debate_id])
    render :new
  end

  def con
    @submission = Submission.new
    @submission.user_id = current_user.id
    @submission.sub_type = 'con'
    @submission.debate = Debate.find(params[:debate_id])
    render :new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)
    @submission.user = current_user
    @debate = Debate.find(params[:debate_id])
    @submission.debate_id = @debate.id

    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission.debate, notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submission }
      else
        format.html { redirect_to :back, :flash => { :error => @submission.errors.full_messages.join(', ') } }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:debate_id, :sub_type, :content, :user_id)
    end
end
