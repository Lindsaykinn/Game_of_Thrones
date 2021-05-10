#this file retrieves data from a website

class Api 

    def self.base_url
        "https://thronesapi.com"

    end

    def self.get_data
        load_characters
        load_houses

    end
    
    def self.load_characters
    characters = []
    base_url
    response = RestClient.get (base_url + '/api/v2/Characters')
    data = JSON.parse(response.body)  #returns all data in JSON format 

    data.each do |character_data|
        Character.new(character_data)
        end
    end

    def self.load_houses
        houses = []
        base_url
        response = RestClient.get(base_url + '/api/v2/Characters')
        data = JSON.parse(response.body)
        # data.map {|x| x.values[5]}.uniq
        

    end

  


    
end