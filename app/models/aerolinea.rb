class Aerolinea < ApplicationRecord
    has_many :vuelo, dependent: :destroy

    validates_presence_of :nombre
end
