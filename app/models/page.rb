class Page < ApplicationRecord

  has_many :sections
  belongs_to :subject  #belongs_to = foreing key




end
