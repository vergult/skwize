class Link < ActiveRecord::Base
  validates :address, :presence => true, :uniqueness => true, :length => { :maximum => 255 }, :format => { :with => URI::regexp(%w(http https)) }
  
  def skwized
    self.id.alphadecimal
  end
end
