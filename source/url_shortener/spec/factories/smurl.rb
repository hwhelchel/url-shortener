FactoryGirl.define do
  factory :smurl do
    l_url 'http://www.example.com'
  end

  factory :bad_smurl, class: Smurl do
    l_url 'www.example.com'
  end
end
