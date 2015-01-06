require 'rails_helper'

RSpec.describe House, :type => :model do
  it "has a valid factory" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(FactoryGirl.build(:house)).to be_valid
  end
  let(:house) { FactoryGirl.build(:house) }
  it { expect(house).to have_many(:users) }
  it { expect(house).to allow_value("Polish ąłóźćżś").for(:name) }
  it { expect(house).to validate_presence_of(:name) }
  it { expect(house).to validate_presence_of(:address) }


end
