class User < ActiveRecord::Base
    has_many :micropost
end

# has_many :microposts, class_name: "microposts, foreign_key: "user_id"