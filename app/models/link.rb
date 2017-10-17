class Link < ApplicationRecord
    enum type: [:multi, :single, :secure]
    has_many :visits

    before_create {
        self.visits = 0
    }

end
