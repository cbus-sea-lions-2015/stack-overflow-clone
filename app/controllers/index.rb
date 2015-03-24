get '/' do
  @questions = Question.all
  @answers = Answer.all
  @votes = Vote.all

  erb :index
end