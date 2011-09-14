Factory.define :user do |f|
  f.sequence(:name) { |n| "John #{('A'..'Z').to_a[(n/2)]} Doe" }
  f.bio "I'm a fake user created with Factory_Girl"
  f.sequence(:age) { |n| "#{n}" }
  f.sequence(:years_till_retirement) { |n| "#{65 - n}" }
end