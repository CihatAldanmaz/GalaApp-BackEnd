class Player < ApplicationRecord
    has_many :playersquads
    has_many :squads, through: :playersquads
end
