# frozen_string_literal: true

require_relative "../spec_helper"
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { SpecHelper.password }
  end
end
