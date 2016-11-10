class Review < ApplicationRecord
  # Direct associations

  has_many   :review_photos,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
