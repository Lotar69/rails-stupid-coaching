class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_message = params[:user_message]
    if @user_message == "i am going to work right now!"
      @answer = "Great!"
    elsif @user_message.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
