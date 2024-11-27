class Collection < ApplicationRecord
  has_many :photos, dependent: :destroy
end
