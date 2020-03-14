require 'spec_helper'

describe Lita::Handlers::Fortune, lita_handler: true do
  it {is_expected.to route_command("fortune").to(:fortune) }

  describe 'fortune' do
    it "replies to a 'fortune' command" do
      allow(File).to receive(:exist?).with('/usr/bin/fortune').and_return(true)
      allow_any_instance_of(Lita::Handlers::Fortune).to receive(:run_cmd).with('/usr/bin/fortune').and_return("A magical fortune!")
      send_command('fortune')
      expect(replies.last).to be_kind_of(String)
      expect(replies.last).to eq("A magical fortune!")
    end

    it "replies to a 'fortune' command" do
      allow(File).to receive(:exist?).with('/usr/bin/fortune').and_return(true)
      allow_any_instance_of(described_class).to receive(:run_cmd).with('/usr/bin/fortune').and_return("")
      send_command('fortune')
      expect(replies.last).to be_kind_of(String)
      expect(replies.last).to eq("No fortune for you!")
    end
  end
end
