require 'spec_helper'

describe WebhooksController do

  context 'Stores data' do

    let(:received_params) do
      {"Address":"callum@lostmy.name",
      "EmailType":"Order",
      "Event":"send",
      "Timestamp":1464858295}
    end

    subject { described_class }


    # describe "#receives a deploy hook" do
    #   it "sends data to Email to be store" do
    #     subject.receive
    #     expect(Email).to have_received :create
    #   end
    # end

  end
end
