class Cli

    #the purpose of the cli file is for the user interaction and to control the flow of the program
    
    def start
        puts "Game of Thrones - get important information about the most popular characters!"
        puts "loading application..."
        Api.get_data  #the only time we want to connect to the API is during the process of loading the data
        menu_options

    end

    def menu_options
        puts "Type '1' to list all characters"
        puts "Type '2'to list all characters & their houses"
        puts "Type 'exit' to exit"
        menu
    end

    end

    def get_input
        print "Selection:  "
        gets.chomp
    end

    def menu
        input = get_input
        if input == "1"
                list_characters
                menu_options
        elsif input == "2"
                puts "Top Characters & Their Houses:"
                list_houses
                menu_options
        elsif input == "exit"
                puts "See you next time!"
                exit    
        else 
            invalid_choice
            menu_options
        end 
    end

    def invalid_choice
        puts "Please type a valid option to continue."
    end

# end
    
    # def list_characters_with_details
    #     Character.all.each.with_index(1) do |character, index|
    #         puts "#{index}. #{character.name} - #{character.title} - #{character.family}"
    #     end
    # end

    def list_characters
        Character.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name}"
        end

        character_details_menu_options
    end

    def list_houses
        Character.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name} - #{character.family}"
        end
    end

    def character_details_menu_options
        puts "Select number next to the character to learn more."
        puts "Or type 'exit' to exit program"
        character_with_details_menu
    end

    def character_with_details_menu
        input = get_input

        if input.to_i.between?(1, Character.all.length)

            index = input.to_i - 1
            character = Character.all[index]
            print_out_character_details(character)
        elsif input == "exit"
            puts "Valar Morghulis"
            exit
        else
            invalid_choice
            character_details_menu_options
        end
    end

    def print_out_character_details(character)
        puts "👑👑👑👑👑👑👑👑👑👑👑👑👑👑👑👑"
        puts "Name: #{character.name}"
        puts "Title: #{character.title}"
        puts "House: #{character.family}"
        puts "Photo: #{character.image}"
        puts "👑👑👑👑👑👑👑👑👑👑👑👑👑👑👑👑" 
        

    end




