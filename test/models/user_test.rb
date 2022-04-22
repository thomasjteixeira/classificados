require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "nome é obrigatorio" do
    user = User.new(name: nil)

    user.save

    assert user.errors[:name].any?
  end
  
  test "email é obrigatorio e no formato valido" do
    user = User.new(email: nil)
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "invalido")
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "valido@email.com")
    user.save

    refute user.errors[:email].any?
  end

  test "email é unico" do
    user = User.create!(name: "Darth Vader", email: "vader@example.com", password: "secrect", password_confirmation: "secrect")

    other_user = User.create(email: "vader@example.com")

    assert other_user.errors[:email].any?
  end

end
