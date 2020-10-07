class Search < ApplicationRecord
   serialize :query_params
   has_many :results
end