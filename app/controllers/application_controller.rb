class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  ############################
  ##### CRUD for Comments ####
  ############################

  get "/comments" do
    record = Comment.all
    record.to_json
  end

  get "/comments/:record_id" do
    record = Comment.where("record_id = ?", params[:record_id])
    record.to_json
  end

  # Create
  post '/comments' do
    record = Comment.create(comment_params)
    record.to_json
  end

  # Destroy
  delete '/comments/:id' do
    record = Comment.where("record_id = ?", params[:record_id])
    status 204
    record.destroy
  end

  ############################
  ##### CRUD for Records #####
  ############################

  # Read
  get '/records' do
    records = Record.all
    records.to_json
  end

  # getting with perams params[:id]
  get "/records/:id" do
    record = Record.find(params[:id])
    record.to_json
  end

  
  # Create
  post '/records' do
    record = Record.create(record_params)
    status 201
    record.to_json
  end

  # Update
  patch '/records/:id' do
    record = Record.find(params[:id])
    record.update(record_params)
    status 200
    record.to_json

  end

  # Destroy
  delete '/records/:id' do
    record = Record.find(params[:id])
    status 204
    record.destroy
  end

  private

  def record_params
    {artist:params[:artist], album:params[:album], year:params[:year], description:params[:description], image_url:params[:image_url]}.compact
  end

  def comment_params
    {name:params[:name], body:params[:body], date: DateTime.now, record_id:params[:record_id]}.compact
  end

end
