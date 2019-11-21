class User < ApplicationRecord
    validates_presence_of :username, :email, :password
    has_secure_password
    serialize :collection, Array
    serialize :wishlist, Array
end
