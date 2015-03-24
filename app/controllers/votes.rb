get '/votes/new' do
  erb :'votes/new'
end

post '/votes' do
  @vote = Vote.new(params[:vote])

  if @vote.save
    redirect '/'
  else
    redirect 'votes/new'
  end
end
