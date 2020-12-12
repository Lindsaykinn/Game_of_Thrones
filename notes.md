fields available:
firstName
lastName
fullName
title
family
image
imageUrl

run file notes:

#environment file will have all of our files and gems

#we have required all of the files needed in `environment.rb` so everything is defined by the time the program starts with CLI.new.start
#with code below we are instantiating a new instance of the CLI object and running the start method

api file notes:

#this file retrieves data from a website

game_of_thrones file notes:
#this class represents the data

cli file notes:

#the purpose of the cli file is for the user interaction and to control the flow of the program

api - #the only time we want to connect to the API is during the process of loading the data


 # def self.find_by_name(name)
    #   #iterate through my list of characters and return a specific character
    #   all.select {|character| character.name == name}

    # end
      

    # def character_entry_menu_options
    #     puts "Type name of character to learn more"
    #     puts "Or type " + "'exit' ".bold.red + "to exit program"
    # end

    # def character_entry_menu
    #     #if whatever the user inputs matches the find_by_name method, return that characters details
    #     # character_names = Character.find_by_name(name)
    #     # array = Character.all.to_a
    #     # new_array = array.each_slice(1).to_a
    #     # .include?
    #     #how to access name(string) in array
    #     # binding.pry
    #     input = get_input
    #     character = Character.all
    #     if input == "#{character.name}"
    #         Character.find_by_name(character)
    #         #access name index in array but as a string == character name
    #         #prints out character details
    #     else
    #         invalid_choice
    #         menu_options


    #     end

    

    # def character_entry_with_details
    #     input = gets.chomp
    #     character_array = []
    #     Character.all.to_a
    #     character_array.select.each do |name|
            
    #     end
    #     if input == 
    #         Character.find_by_name()
    #         print_out_character_details()
    #     else
    #         invalid_choice
    #     end
    # end
        #type in the name of the character
        #query the character
        #return the details of that character

        # def list_characters_with_details
    #     Character.all.each.with_index(1) do |character, index|
    #         puts "#{index}. #{character.name} - #{character.title} - #{character.family}"
    #     end
    # end


     # def select_again_or_exit_2
    #     puts "Type " + "character name ".bold.blue + "to continue"
    #     puts "Or type " + "'menu' ".bold.blue + "to return to the main menu"
    #     puts "Or type " + "'exit' ".bold.red + "to exit program"

    #     input = get_input

    #     Character.all.each.with_index(1) do |char, i|
    #         if input == char.name
    #             character = Character.all[i-1]
    #             print_out_character_details(character)
    #             find_by_name
    #         elsif input == "menu"
    #                 menu_options
    #         elsif input == "exit"
    #             puts "See you next time!".bold
    #             exit
    #         # else
    #         #     find_by_name
    #         end
    #     end
    # end





