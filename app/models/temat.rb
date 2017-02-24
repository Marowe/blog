class Temat < ApplicationRecord
  has_many :comments, as: :commentable
end
