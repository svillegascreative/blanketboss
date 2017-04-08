class Blanket < ApplicationRecord
  belongs_to :blanket_type
  has_and_belongs_to_many :statuses

  validates :name, presence: :true

  scope :blanket_type_id, -> (blanket_type_id) {where blanket_type_id: blanket_type_id}
  scope :blanket_size, -> (blanket_size) {where blanket_size: blanket_size}
  scope :status_ids, -> (status_ids) {where status_ids: status_ids}
  include Filterable

  mount_uploader :photo, PhotoUploader


  # def self.search(term)
  #
  # end


end
