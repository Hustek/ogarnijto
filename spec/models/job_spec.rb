require 'rails_helper'

RSpec.describe Job, :type => :model do
  it "has a valid factory" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(FactoryGirl.build(:job)).to be_valid
  end
  let(:job) { FactoryGirl.build(:job) }
  it { expect(job).to validate_presence_of(:name) }
  it { expect(job).to belong_to(:task) }
end
