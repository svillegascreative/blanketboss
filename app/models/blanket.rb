class Blanket < ApplicationRecord

  validates :name, presence: :true
  # belongs_to :blanket_type

  def self.search(term)

  end


end
