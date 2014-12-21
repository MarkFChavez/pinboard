require "rails_helper"

RSpec.describe User do
  context "validations" do
    let(:params) { { provider: "provider", uid: "uid" } }

    it "should have a provider" do
      user = User.new(params.merge(provider: nil))
      expect(user).not_to be_valid
    end

    it "should have a uid" do
      user = User.new(params.merge(uid: nil))
      expect(user).not_to be_valid
    end
  end
end
