require "pry"
#rest-client allows us to connect to the API
require "rest-client"
#we want to return our data in json formatting (hashes)
require "json"

require "awesome_print"

require_relative "./services/api"
require_relative "./services/cli"
require_relative "./models/characters"
require_relative "./models/houses"


module GameOfThrones
  class Error < StandardError; end
  # Your code goes here...
end
