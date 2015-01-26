class Post < ActiveRecord::Base
    has_many :comments
    
    validates :title, presence: true, length: { maximum: 150}
    validates :content, presence: true, length: { maximum: 10000 }
end
