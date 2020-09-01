require 'change_generator'

describe ChangeGenerator do
  let(:change_generator) { described_class.new }

  it "takes '1' and returns ['£1']" do
    expect(change_generator.convert(1)).to eq (["£1"])
  end
end
