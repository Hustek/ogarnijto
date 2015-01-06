require 'rails_helper'

RSpec.describe User, :type => :model do
  let (:user) { FactoryGirl.build(:user) }
      it { expect(user).to validate_presence_of(:password) }
  it { expect(user).to validate_confirmation_of(:password) }
    it { expect(user).to validate_confirmation_of(:mail) }

  it { expect(user).to validate_presence_of(:nick) }
  it { expect(user).to validate_presence_of(:mail) }
  it { expect(user).to allow_value("dhh@nonopinionated.com").for(:mail) }
  it { expect(user).to_not allow_value("base@example").for(:mail) }
  it { expect(user).to_not allow_value("blah").for(:mail) }
  it { expect(user).to allow_value("", nil).for(:avatar) }
  it { expect(user).to belong_to(:house) }
  it { expect(user).to callback(:send_welcome_email).after(:create) }

end
