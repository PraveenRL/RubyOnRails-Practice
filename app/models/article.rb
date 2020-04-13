class Article < ApplicationRecord
    validates :title, 
    presence: true, 
    length: {minimum: 5}
    
    has_many :comments, dependent: :destroy
    # dependent -> comment will destroy along with article deletion
end
