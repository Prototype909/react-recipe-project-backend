class Like < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :reciper, optional: true
end