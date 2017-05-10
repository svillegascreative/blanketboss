class Blanket < ApplicationRecord
  belongs_to :blanket_type
  has_and_belongs_to_many :statuses

  validates :name, presence: :true

  scope :blanket_type_id, -> (blanket_type_id) {where blanket_type_id: blanket_type_id}
  scope :blanket_size, -> (blanket_size) {where blanket_size: blanket_size}
  scope :status_ids, -> (status_id) { joins(:statuses).where(statuses: { id: status_id }) }
  include Filterable

  mount_uploader :photo, PhotoUploader

  def self.to_csv
    attributes = %w(name blanket_size brand blanket_type_name colour trim status_names note)

    CSV.generate do |csv|
      csv << %W(Name Size Brand Type Colour Trim Status Note)

      all.each do |blanket|
        csv << attributes.map{ |attr| blanket.send(attr)}
      end
    end
  end

  def blanket_type_name
    BlanketType.find(self.blanket_type_id).blanket_type
  end

  def status_names
    names = []
    self.statuses.each do |status|
        names << status.name
    end
    names.join(", ")
  end

end
