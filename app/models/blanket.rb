class Blanket < ApplicationRecord

  validates :name, presence: :true
  has_one :blanket_type

  def self.search(term)

  end

end
