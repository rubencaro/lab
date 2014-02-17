require 'sinatra'

get '/' do
  "the time where yeah   ooooh yeah  this server lives is #{Time.now}
    <br /><br />check out your <a href=\"/agent\">user_agent</a>"
end

get '/agent' do
  "you're using #{request.user_agent}"
end

get '/suma/:a/:b' do
  result = params[:a].to_i + params[:b].to_i
  result.to_s
end

=begin

Objetivo:

Generar respuestas JSON.






---------------------------------
Desarrollo / deploy

-----  server local
bundle exec ruby app.rb

ir a http://0.0.0.0:4567/

-----  ver info
git status
git diff
git lola

-----  añadir cambios y empaquetarlos
git add .
git commit -am 'comentario para el paquete'

-----  enviar a github
git push github master

-----  enviar a producción
git push origin master

ir a http://lab-lanuez.rhcloud.com/

=end
