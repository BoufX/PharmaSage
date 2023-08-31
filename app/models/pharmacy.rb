class Pharmacy < ApplicationRecord
    has_many :medicine
    has_many :availabilities
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
end
