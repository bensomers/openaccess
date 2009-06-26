class Post < ActiveRecord::Base
  belongs_to :user
  
  def edited?
    return true if updated_at == created_at
  end
  
end
