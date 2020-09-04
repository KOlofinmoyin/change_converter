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

  it "takes '16.30' and returns ['£10', '£5', '£1', '20p', '10p']" do
    expect(change_generator.convert(16.30)).to eq (["£10", "£5", "£1", "20p", "10p"])
  end

  it "takes '19.99' and returns ['£10', '£5', '£1', '£1', '£1', '£1', '50p', '20p', '20p', '5p', '2p', '2p']" do
    expect(change_generator.convert(19.99)).to eq (["£10", "£5", "£1", "£1", "£1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"])
  end

  it "takes '76.81' and returns ['£50', '£20', '£5', '£1', '50p', '20p', '10p', '1p']" do
    expect(change_generator.convert(76.81)).to eq (["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"])
  end

end
