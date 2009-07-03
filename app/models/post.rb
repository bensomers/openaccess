class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  def edited?
    true if edited_by
  end
    
  def editor
    User.find(self.edited_by) if self.edited_by
  end
    
end
