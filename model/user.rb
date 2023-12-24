class User
    attr_accessor :firstName,:lastName, :email, :password, :sexe, :role
    def initialize(firstName,lastName,email,password,sexe,role)
        @firstName= firstName
        @lastName= lastName
        @email = email
        @password = password
        @sexe = sexe
        @type = type
    end
end