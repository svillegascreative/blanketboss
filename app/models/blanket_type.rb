class BlanketType < ApplicationRecord
  has_many :blankets

  def readable
      blanket_type
  end
end
