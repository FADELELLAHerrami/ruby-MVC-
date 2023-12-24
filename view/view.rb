class View
    def addUser
        puts "give me your firstName"
        firstName = gets.chomp
        puts "give me your lastName"
        lastName = gets.chomp
        puts "give me your email"
        email = gets.chomp
        puts "give me your password"
        password = gets.chomp
        puts "give me your sexe"
        sexe = gets.chomp
        user = {
            "firstName" => firstName,
            "lastName" => lastName,
            "email": email,
            "password": password,
            "role": "user",
            "sexe": sexe   
            }
    end
end

    