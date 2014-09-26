require 'twitter'
require 'sinatra'
require './configure'

#Inicio
get '/' do
  @seguidores = []
  @name = ''
  @number = 0
  erb :twitter
end

#Una vez pulsado submit
post '/' do
  @seguidores = []
  client = my_twitter_client() 
  @name = params[:firstname] || ''
  @number = params[:n].to_i

  if (client.user? @name) && (@number <= 10) && (@number >=1)                 
    contactos = client.friends(@name,{}).take(@number)
    @seguidores =(@seguidores != '') ? contactos.map{ |i| [i.name ,i.followers_count]} : ''
    @seguidores.sort_by!{|a,b| -b}
  end

  erb :twitter
  
end