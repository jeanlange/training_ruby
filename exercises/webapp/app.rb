require 'sinatra'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3",
  database: "webappexample.sqlite3"}

#require './migration_users'
#migration = CreateUsers.new
#migration.change

class User < ActiveRecord::Base
end

get '/users' do
  User.create(name: "John #{Kernel.rand(1000)}")
  User.all.map(&:name).join(',')
end



