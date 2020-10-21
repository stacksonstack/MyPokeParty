class Party < ApplicationRecord
    belongs_to :user 
    belongs_to :pokemon, optional: true
end
