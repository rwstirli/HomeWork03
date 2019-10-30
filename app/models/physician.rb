class Physician < ApplicationRecord
    has_many :appointments, :dependent => :destroy
    has_many :offices, inverse_of: :physician, :dependent => :destroy
    accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true

    validates :name, :specialty, :presence => true
end
