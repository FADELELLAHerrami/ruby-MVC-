require_relative "../view/view.rb"
require_relative "../model/userManipulation.rb"
class UserController
    def initialize
        @userManipulation = UserManipulation.new
        @view = View.new
    end
    # Method to display the login page and handle user's input for logging in
    def signup 
        user = @view.addUser
        puts user
        @userManipulation.add_user(user)
    end      
end
UserController.new.signup