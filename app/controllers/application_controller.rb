class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
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
  #Create
  post '/records' do
    record = Record.create(record_params)
    status 201
    record.to_json
  end

  #Update
  patch '/records/:id' do
    record = Record.find(params[:id])
    record.update(record_params)
    record.to_json
    status 200
  end

  #Destroy
  delete '/records/:id' do
    record = Recorc.find(params[:id])
    record.Destroystatus 204
  end

  private

  def record_params
    {artist:params[:artist], album:params[:album], year:params[:year], image_url:params[:image_url]}
  end

end
