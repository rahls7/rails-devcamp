class Skill < ApplicationRecord
    validates_presence_of :percent_utilized, :title
end
