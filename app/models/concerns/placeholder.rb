module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(width:, height:)
        "http://placehold.it/#{width}x#{height}"
    end
end