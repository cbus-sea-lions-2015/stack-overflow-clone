get '/questions' do
  @questions = Question.all
  erb :'questions/show'
end

get '/questions/new' do
  erb :'questions/new'
end

get '/questions/:question_id/edit' do
  @questions = Question.all?

  erb :'questions/show'
end

get '/questions/:question_id' do
  @question = Question.find(params[:question_id])

  erb :'questions/show'
end

put '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @question.update(params[:question])

  redirect '/'
end 

delete '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @question.destroy

  redirect '/'
end

post '/questions' do
  @question = Question.new(params[:question])

  if @question.save
    redirect '/'
  else
    redirect 'questions/new'
  end
end

