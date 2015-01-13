require 'rails_helper'

RSpec.describe Room, :type => :model do

  let(:room) { FactoryGirl.build(:room) }
  it { expect(room).to have_and_belong_to_many(:users) }
  it { expect(room).to allow_value("Polish ąłóźćżś").for(:name) }
  it { expect(room).to validate_presence_of(:name) }
  it { expect(room).to validate_presence_of(:private) }
  it { expect(room).to allow_value(true).for(:private) }
  it { expect(room).to allow_value(false).for(:private) }
  it { expect(room).to_not allow_value("string").for(:private) }
  it { expect(room).to have_and_belong_to_many(:users) }

end