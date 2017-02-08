class Blanket < ApplicationRecord

  validates :name, presence: :true

  belongs_to :blanket_type
  has_and_belongs_to_many :statuses

  # def self.search(term)
  #
  # end


end
