class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands

  validates(:name, {
    :presence => true,
    :uniqueness => { case_sensitive: false},
    :length => { :maximum => 100 }
    })
end
