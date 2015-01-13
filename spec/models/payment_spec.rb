require 'rails_helper'

RSpec.describe Payment, :type => :model do
  let (:payment) { FactoryGirl.build(:payment) }
  it { expect(payment).to validate_presence_of(:price) }
  it { expect(payment).to validate_presence_of(:type) }
  it { expect(payment).to validate_confirmation_of(:name) }
  it { expect(payment).to validate_inclusion_of(:type).in_array(['stale','dynamiczne','czynsz']) }
  it { expect(payment).to_not allow_value("other").for(:type) }
  it { expect(payment).to belong_to(:task) }
end