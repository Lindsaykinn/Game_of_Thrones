class Cli

    def start
        puts "Game of Thrones - what you need to know about every character!"
        puts "loading application..."
        Api.get_data
        menu

    end

    def menu
        puts "Type 1 to list all characters"
        puts "Type 2 to list all houses"
        puts "Type 'exit' to exit program"
        menu
    end

end