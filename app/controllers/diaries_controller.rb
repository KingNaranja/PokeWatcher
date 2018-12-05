class DiariesController < ProtectedController
  before_action :set_diary, only: %i[show update destroy]
  require 'date'

  # GET /diaries
  def index
    
    # @diaries = Diary.all 
    @diaries = current_user.diaries.all
    render json: @diaries
    
  end

  # get today's diary entry
  def showToday
    today = Date.today
    @diaries = Diary.all

    # find entries that are created today
    todays_diary = current_user.diaries.all.select {|entry| entry.date == today}
    if todays_diary
        render json: todays_diary
    else
        render json: todays_diary.errors
    end
    

  end

  # GET /diaries/1
  def show
    # @diary = Diary.where(date=Date.today)
    render json: @diary
  end

  def new
    @diary = current_user.diaries.build
  end

  # POST /diaries
  def create
    # @diary = Diary.new(diary_params)
    @diary = current_user.diaries.build(diary_params)

    if @diary.save
      render json: current_user.diaries, status: :created, location: @diary
    else
      render json: @diary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diaries/1
  def update

    @diary = current_user.diaries

    if @diary.update(diary_params)
      render json: @diary
    else
      render json: @diary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diaries/1
  def destroy
    # @diary = current_user.diaries
    @diary.destroy

    render json: current_user.diaries
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def diary_params
      params.require(:diary).permit(:date, :note)
    end
end
