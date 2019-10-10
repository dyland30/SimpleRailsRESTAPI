class Vuelo < ApplicationRecord
  belongs_to :aerolinea

  validates_presence_of :numvuelo
end
