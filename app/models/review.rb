class Review < ApplicationRecord
  # Direct associations

  belongs_to :review_parent,
             :class_name => "Review"

  has_many   :sub_reviews,
             :class_name => "Review",
             :foreign_key => "review_parent_id"

  has_many   :review_photos,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
