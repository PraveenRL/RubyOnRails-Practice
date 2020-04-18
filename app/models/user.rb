class User < ApplicationRecord
    validates_presence_of :password, :message => "Please Enter Password"
end
