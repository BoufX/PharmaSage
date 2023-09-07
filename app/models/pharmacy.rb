class Pharmacy < ApplicationRecord
    has_many :medicine
    has_many :availabilities
    has_many :reviews

    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

    belongs_to :user

end
