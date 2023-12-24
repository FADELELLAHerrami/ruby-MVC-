require "json"

class UserManipulation
    def initialize
        @users = [] 
        load_json
    end

    # Add a user to the list of users. If the username already exists, it will not be added again.
    # def add_user(firstName, password)
    #     if @users.all? {|u| u["username"] == username} 
    #         new_user = {"username"=>username,"password"=>password}
    #         @users << new_user
    #         return true
    #     end
    # end 
    
    def load_json
        filePath = "data/users.json"
        serialized_users = File.read(filePath)
        @users = JSON.parse(serialized_users)
    end
    def save_json
        filePath = "data/users.json"
        data = load_json
        users = [{
            "firstName"=> "FADEL ELLAH",
            "lastName"=> "ERRAMI",
            "email"=> "fadelellaherrami@gmail.com",
            "password": "543f21",
            "role"=> "admin",
            "sexe"=> "male"
        }]
        data.push(users)
        File.open(filePath,"w") do |file|
            file.write(JSON.pretty_generate(data))
        end
    end
end
p UserManipulation.new.save_json