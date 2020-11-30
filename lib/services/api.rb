#this file retrieves data from a website

class Api

    def self.get_data
        response = RestClient.get("https://thronesapi.com/api/v2/Characters")
        binding.pry
    end

end