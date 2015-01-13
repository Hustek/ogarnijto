require 'rails_helper'

RSpec.describe Task, :type => :model do
  let(:task) { FactoryGirl.build(:task) }
  it { expect(task).to validate_presence_of(:private) }
  it { expect(task).to validate_presence_of(:date) }
  it { expect(task).to validate_presence_of(:finished) }
  it { expect(task).to allow_value(true).for(:private) }
  it { expect(task).to allow_value(false).for(:private) }
  it { expect(task).to allow_value(true).for(:finished) }
  it { expect(task).to allow_value(false).for(:finished) }
  it { expect(task).to belong_to(:taskable) }
end
