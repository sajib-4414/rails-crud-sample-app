class Shark < ApplicationRecord
    has_many :posts , dependent: :destroy # in order to have one to many, we need to have this here
    # as well, along with the belongs to in the many side as well.
    validates :name, presence: true, uniqueness: true
    validates :facts, presence: true
end
