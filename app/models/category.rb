class Category < ActiveRecord::Base
  before_save :titleize_name
  
  has_many :posts
    
  validates :name,        presence: true, length: { maximum: 150 }
  validates :description, length: { maximum: 2000 }
  
  private
    def titleize_name
      self.name = self.name.titleize
    end
end
