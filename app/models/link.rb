class Link < ApplicationRecord
    has_many :visits

    before_create {
        self.code = Link.new_random_string
    }

    def self.new_random_string
        SecureRandom.hex(4)
    end

end
