FactoryGirl.define do
  factory :contact do
    first_name "anjibabu"
    last_name "k"
  end

   factory :invalid_contact, parent: :contact do 
      first_name ''
   end
end
