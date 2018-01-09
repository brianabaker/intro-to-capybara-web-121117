# Write your code here!


#the config.ru fie is the file that puts everything together- This is the file shotgun or rackup will read to start your local application server, and it's also the file our test suite is using to define our application.

require 'sinatra'

require_relative './app'
#requires the file that defines our main application controller.

run Application
