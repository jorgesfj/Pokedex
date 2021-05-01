class Pokemon < ApplicationRecord
    validates :name, presence: true
    
    def self.build_pokemon(name:, location:, move:, description:)
        Pokemon.new(name: name, location: location, move: move, description: description)
    end
end
