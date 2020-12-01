#this class represents the data

# module GameOfThrones
#     VERSION = "0.1.0"
#   end

  class Character
    attr_accessor :name, :title, :family, :image

    @@all = []

    def initialize(data)        
        @name = data["fullName"]
        @title = data["title"]
        @family = data["family"]
        @image = data["imageUrl"]
        @@all << self
    end

    def self.all
        @@all
    end


  end
  