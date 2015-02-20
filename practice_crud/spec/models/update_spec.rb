require 'rails_helper'

describe Update, type: :model do
  it "creates an update with status Person" do
    update = Update.create(status: 'Person')
    expect(update.status).to eql 'Person'
  end
  it 'does not allow blank user field' do
    update = Update.create(status: 'nil')
    expect(update).to be_invalid
  end
end
