class Company < ApplicationRecord
    has_many :games, foreign_key: :company_id, primary_key: :id
end
