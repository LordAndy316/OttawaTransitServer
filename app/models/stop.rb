class Stop < ApplicationRecord
    validates :StopNumber, presence: true
    validates :StopDescription, presence: true, length: { minimum: 10 }
end
