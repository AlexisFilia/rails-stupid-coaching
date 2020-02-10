class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach(params[:question])
  end

  def coach(string)
    if string == "I am going to work"
      return "Great!"
    elsif string.split("").last == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
