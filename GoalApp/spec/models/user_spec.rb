require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:sherlock) { User.create(
      username: "sherlock",
      password: "password123")
  }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
  it { should validate_presence_of(:session_token) }
#   it { should validate_uniqueness_of(:username) }

    describe 'uniqueness' do
        before :each do 
            create(:user)
        end
        it { should validate_uniqueness_of(:username) }
        it { should validate_uniqueness_of(:session_token) }
    end

#   describe "find by credentials" do
#     before {sherlock.save}
#     context "with valid credentials" do
#         it "should return user" do
#             expect(User.find_by_credentials('sherlock', 'password123')).to eq(sherlock)
#         end
#     end

#     context "with invalid credentials" do
#         it "should return nil" do
#             expect(User.find_by_credentials('sherlok', 'password')).to be(nil)
#         end
#     end
#   end

#   describe "is_password?" do
#     context
#   end
  
end