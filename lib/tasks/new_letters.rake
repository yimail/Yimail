namespace :db do
  desc "產出假信件"
  task :new_letters => :environment do
    u = User.random
    10.times do |i|
      u.letters.create(sender: Faker::FunnyName.name,
                       subject: Faker::Lorem.sentences(number: 1),
                       created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short))
    end
  end
end