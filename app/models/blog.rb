class Blog < ActiveRecord::Base
  default_scope order('posted_at desc')
  
  attr_accessible :post, :published, :featured, :title, :views
  validates_presence_of :post, :title
  
  validate :is_published

  private
  def is_published
    self.posted_at = Time.now if self.published
  end
  

end
   