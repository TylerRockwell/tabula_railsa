class HomeController < ApplicationController
  before_action :set_answer, only: [:show]
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to home_path(@answer), notice: "Answers saved"
    else
      redirect_to home_new_path
    end
  end

  def show

  end

  private

    def answer_params
      params.require(:answer).permit(:name, :chocolate, :puppies, :rainbows, :cold_hard_cash)
    end

    def set_answer
      byebug
      @answer = Answer.find(params[:id])
    end

end
