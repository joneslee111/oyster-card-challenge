require_relative '../lib/card.rb' 

describe Oystercard do 

  it "responds to balance method " do
      expect(subject).to respond_to(:balance)
  end 
  
  it "responds to 'top_up' method" do 
      expect(subject).to respond_to(:top_up).with(1).argument 
      expect(subject.top_up(1)).to be_integer
  end 
  
  describe '#top_up' do
    it 'should add money' do
      expect(subject.top_up(50)).to eq(50)
    end
    it 'should raise error if limit is reached' do
      expect {subject.top_up(91)}.to raise_error('ERROR: Cannot add. Balance will exceed 90')
    end
  end

  
end 

