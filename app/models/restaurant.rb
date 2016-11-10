class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :counter_cache => true

  has_many   :tags,
             :dependent => :nullify

  has_many   :photos,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
