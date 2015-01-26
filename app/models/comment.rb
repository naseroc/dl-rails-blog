class Comment < ActiveRecord::Base
    belongs_to :post
        
    validates :author,  presence: true, length: { maximum: 50}
    validates :content, presence: true, length: { maximum: 10000 }
    
    default_scope { order 'created_at DESC' }
end
