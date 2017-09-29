class Brand < ActiveRecord:: Base
  has_and_belongs_to_many :stores

  validates(:brandname, {
    :presence => true,
    :uniqueness => { case_sensitive: false},
    :length => { :maximum => 100 }
    })
end
