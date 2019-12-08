class Skill < ApplicationRecord
    inlude Placeholder
    validates_presence_of :percent_utilized, :title

    after_initialize :set_defaults

    def set_defaults
        self.bade ||= Placeholder.image_generator(height: '250', width: '250')
    end

end
