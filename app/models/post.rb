class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :category
    
    validates :title,   presence: true, length: { maximum: 150 }
    validates :content, presence: true, length: { maximum: 10000 }
    
    default_scope { order 'created_at DESC' }
end
