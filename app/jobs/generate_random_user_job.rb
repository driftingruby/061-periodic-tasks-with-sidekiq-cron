# rails g job generate_random_user

class GenerateRandomUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.save!
    sleep 2
  end
end
