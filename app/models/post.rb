class Post < ActiveRecord::Base
    validates :title, presence: true, length: { maximum: 150}
    validates :content, presence: true, length: { maximum: 10000 }
end
