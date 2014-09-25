require 'twitter'
require 'sinatra'
require './configure'

get '/' do
  @seguidores = []
  @name = ''
  @number = 0
  erb :twitter
end

post '/' do
  @seguidores = []
  client = my_twitter_client() 
  @name = params[:firstname] || ''
  @number = params[:n].to_i

  if (client.user? @name) && (@number <= 10)                  
    contactos = client.friends(@name,{:skip_status => 1, :include_user_entities => false}).take(@number)
    @seguidores =(@seguidores != '') ? contactos.map{ |i| [i.name ,i.followers_count]} : ''
    @seguidores.sort_by!{|a,b| -b}
    
  end
  erb :twitter
end