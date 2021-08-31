class Contact < ActiveRecord::Base
    # I dont need to write out the attributes since rails gets it from schema.rb in app/db
    
    # This is just making sure that we need a name/email/comment in order to validate data
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true
end