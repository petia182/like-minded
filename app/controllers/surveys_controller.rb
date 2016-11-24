class SurveysController < ApplicationController
  before_action :authenticate_user!, except: :new

  before_action :find_survey, only: [:show, :update, :update_friends, :destroy, :answering]

  def index

  end

  def show
    @question = Question.new
    authorize @survey
    # authorize @survey
  end

  def new
    @survey = Survey.new
    authorize @survey
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.user = current_user
    authorize @survey
    if @survey.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def answering
    authorize @survey
  end

  # def edit
  # end

  def update

    @question_ids = params[:survey][:question_ids].select{|id| !id.blank?}
    @question_ids.map! { |id| id.to_i }
    ids = @survey.questions.map { |q| q.id }
    new_questions = @question_ids - ids
    new_questions.each do |q|
      sq = SurveyQuestion.create(survey: @survey, question_id: q)
      authorize sq
      sq.save
    end

    redirect_to survey_path(@survey)
  end

  def update_survey_friends
    authorize @survey
    friend_ids = params[:survey][:friend_ids].select{|id| !id.blank?}
    friend_ids.map! { |id| id.to_i }
    ids = @survey.friends.map { |r| r.id }
    new_friends = friend_ids - ids
    new_friends.each do |r|
      sr = SurveyFriend.create(answered_survey: @survey, user_id: r)
      sr.save
    end
    redirect_to survey_path(@survey)
  end

  def destroy
    @survey.delete
  end


  private

  def survey_params
    params.require(:survey).permit(:city, :start_date)
  end

  def find_survey
    @survey = Survey.find(params[:id])
  end
end
