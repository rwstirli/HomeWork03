class Patient < ApplicationRecord
    has_many :physicians, through: :appointments

    validates :name, :presence => true
end
