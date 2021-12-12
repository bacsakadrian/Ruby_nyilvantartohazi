require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
   end

   test "cannot_save_user_without_username" do
    user = User.new password: 'Valami'
    assert !user.save, "Problem"
   end

   test "Confirmpassword" do
    user = User.new password: 'Valami123'
    assert user.authenticated?('Valami123'), 'Ok'
   end

   test "Confirmpassword_casesensitive" do
    user = User.new password: "Valami123"
    assert !user.authenticated?("valami123"), 'Ok'
   end

   test "User_created and authenticated" do
    user = User.new username: "Jóska", password:"Valami123"
    assert user.authenticated?("Valami123") & user.save, "oK"
   end
end

