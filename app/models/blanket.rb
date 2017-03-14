class Blanket < ApplicationRecord
  belongs_to :blanket_type
  has_and_belongs_to_many :statuses

  validates :name, presence: :true

  mount_uploader :photo, PhotoUploader


  # def self.search(term)
  #
  # end


end
