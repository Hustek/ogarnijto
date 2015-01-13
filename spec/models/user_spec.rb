require 'rails_helper'

RSpec.describe User, :type => :model do
  let (:user) { FactoryGirl.build(:user) }
  it { expect(user).to validate_presence_of(:password) }
  it { expect(user).to validate_confirmation_of(:password) }
  it { expect(user).to validate_confirmation_of(:email) }
  it { expect(user).to validate_uniqueness_of(:email) }
  it { expect(user).to validate_presence_of(:nick) }
  it { expect(user).to validate_presence_of(:email) }
  it { expect(user).to allow_value("dhh@nonopinionated.com").for(:email) }
  it { expect(user).to_not allow_value("base@example").for(:email) }
  it { expect(user).to_not allow_value("blah").for(:email) }
  it { expect(user).to allow_value("", nil).for(:avatar) }
  it { expect(user).to belong_to(:house) }
  it { expect(user).to have_and_belong_to_many(:rooms) }
  describe "sends greeting email" do
   it { expect(User.send_greeting_email).to include("Witaj w serwisie") }
  end
end