require 'change_generator'

describe ChangeGenerator do
  let(:change_generator) { described_class.new }

  it "takes '1' and returns ['£1']" do
    expect(change_generator.convert(1)).to eq (["£1"])
  end

  it "takes '2' and returns ['£1', '£1']" do
    expect(change_generator.convert(2)).to eq (['£1', '£1'])
  end

  it "takes '0.50' and returns ['50p']" do
    expect(change_generator.convert(0.50)).to eq (["50p"])
  end

  it "takes '1.50' and returns ['£1', '50p']" do
    expect(change_generator.convert(1.50)).to eq (["£1", "50p"])
  end

  it "takes '7.42' and returns ['£5', '£1', '£1', '20p', '20p', '2p']" do
    expect(change_generator.convert(7.42)).to eq (["£5", "£1", "£1", "20p", "20p", "2p"])
  end

  it "takes '40' and returns ['£20', '£20']" do
    expect(change_generator.convert(40)).to eq (["£20", "£20"])
  end

end
