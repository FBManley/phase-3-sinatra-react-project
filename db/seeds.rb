puts "🌱 Seeding spices..."
RecordLabel.destroy_all
Artist.destroy_all

5.times do 
  record_label = RecordLabel.create(
    name: Faker::Artist.unique.name
  )

 3.times do 
    Artist.create(
      name: Faker::Name.unique.name, 
      albums: Faker::Verb.base,
      is_signed: Faker::Boolean.boolean,
      record_label_id: record_label.id
    )
  end
end 

puts "✅ Done seeding!"


