ActiveRecord::Schema.define do
  create_table(:users, :force => true) do |t|
    t.string :name
    t.text   :bio
    t.text   :age
    t.text   :years_till_retirement
    t.timestamps
  end
end