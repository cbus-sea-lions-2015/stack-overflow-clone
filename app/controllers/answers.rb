get '/answers/new' do
  erb :'answers/new'
end

post '/answers' do
  @answer = Answer.new(params[:answer])

  if @answer.save
    redirect '/'
  else
    redirect 'answers/new'
  end
end