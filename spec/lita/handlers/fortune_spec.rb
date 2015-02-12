require 'spec_helper'

describe Lita::Handlers::Fortune, lita_handler: true do
  it {is_expected.to route_command("fortune").to(:fortune) }

  describe 'fortune' do
    it "replies to a 'fortune' command" do
      send_command('fortune')
      expect(replies.last).to be_kind_of(String)
    end
  end
end
