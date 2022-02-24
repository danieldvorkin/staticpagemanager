class Page < ApplicationRecord
    belongs_to :project, optional: true
end
