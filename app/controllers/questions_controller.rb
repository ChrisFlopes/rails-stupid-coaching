class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    ans = "I don't care, get dressed and go to work!"
    ans = 'Great!' if @question == 'I am going to work'
    ans = 'Silly question, get dressed and go to work!' if @question[-1] == '?'
    @answer = ans
  end
end
