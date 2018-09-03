class Micropost < ActiveRecord::Base
    validates :content,  length: {maximum: 5} 
    belongs_to :user
    
    
end

# ActiveRecord
# ApplicationRecord
# Server side validation using 
# using Validates to manage Validatoin etc , and move on 
# belongs_to :user, class_name: "user", foreign_key: "user_id"