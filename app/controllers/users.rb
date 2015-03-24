get '/users/new' do
  @user = User.new

  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/'
  else
    redirect 'users/new'
  end
end

get '/users/:user_id' do
  @user = User.find params[:user_id]
  erb :'users/show'
end

