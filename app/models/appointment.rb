class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  validates :visit, :physician, :patient, :presence => true

end
