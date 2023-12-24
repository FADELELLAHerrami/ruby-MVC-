require "json"

class UserManipulation

    def initialize
        @users = [] 
        load_json
    end

    # Add a user to the list of users. If the username already exists, it will not be added again.
    def add_user(user)
        if !@users.any? {|e| e["email"] == user["email"]}
            save_json(user)
            puts "user bien enregistré"
            return true
        else
            puts "ce compte est déja existe"
            return false
        end
    end 

    def user_exist(email)
        if @users.any? {|e| e["email"] == email}
            puts "user exist"
            return true
        else
            puts "user n'existe pas"
            return false
        end 
    end 

    # def returnUser(email,password)
    #     if user_exist(email)
    #         @users.each {|user| return user if  user["email"] == email && user["password"] == password}
    #     else
    #         puts "password est incorrect "
    #     end
    # end

    private
    def load_json
        filePath = "data/users.json"
        serialized_users = File.read(filePath)
        @users = JSON.parse(serialized_users)
    end

    def save_json(user)
        filePath = "data/users.json"
        data = load_json
        data.push(user)
        File.open(filePath,"w") do |file|
            file.write(JSON.pretty_generate(data))
        end
    end

end
# tester la class
user = {
    "firstName"=> "ahmed",
    "lastName"=> "ERRAMI",
    "email"=> "fadelellsssssahwwsserrami@gmail.com",
    "password"=> "543f21",
    "role"=> "admin",
    "sexe"=> "male"
  }
p UserManipulation.new.returnUser("fadelellaherrami@gmail.com","jskjskjs")
