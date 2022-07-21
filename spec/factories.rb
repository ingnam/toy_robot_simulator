FactoryBot.define do
  factory :robot, aliases: [:robot_in_null_position] do
    factory :robot_in_position do
      association :position, strategy: :build
      initialize_with { new position: position }
    end
  end

  factory :position do
    factory :out_of_bounds_position do
      initialize_with { new x_coord: 100 }
    end
  end

  factory :null_position
end
