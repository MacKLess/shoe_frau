class Brand < ActiveRecord:: Base
  has_and_belongs_to_many :stores

  validates(:brandname, {
    :presence => true,
    :uniqueness => { case_sensitive: false},
    :length => { :maximum => 100 }
    })

  before_save(:capitalize)

  def capitalize
    self.brandname=(brandname.titleize)
  end
end
