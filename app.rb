require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:RPS)
end
