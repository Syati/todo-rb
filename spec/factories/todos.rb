# frozen_string_literal: true
FactoryGirl.define do
  factory :todo do
    sequence(:title) { |n| "todo-title-#{n}" }
    status :active
    description ""
  end
end
