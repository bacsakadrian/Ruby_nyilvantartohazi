class User < ApplicationRecord
    validates :username, presence: true
    validates :password, presence: true
    validates :password, confirmation: {case_sensitive: true}
    def self.authenticate(username, pass) 
        user = User.where(username: username).take
        user && user.authenticated?(pass) ? user : nil
    end

    def authenticated?(pass)
        self.password == pass
    end
end
