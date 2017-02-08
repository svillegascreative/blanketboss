class Status < ApplicationRecord
  has_and_belongs_to_many :blankets

  def status_names
    Status.all.names
  end
end
