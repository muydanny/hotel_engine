FactoryBot.define do 
  factory :search do 
    query_params { "summer beach" }
    
    trait :with_results do  
      after(:create) do |search, _| 
        5.times { create(:result, search: search) }
      end
    end
  end
end
