class Cli

    def start
        puts "Game of Thrones - what you need to know about every character!"
        Api.get_data

        puts "loading application..."
        menu

    end

    def menu
        puts "Type '1" to list all characters"
        puts "Type 'exit' to exit program"
        menu
    end

end