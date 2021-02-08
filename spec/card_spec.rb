require_relative '../lib/card.rb' 

describe Card do 

  it "responds to balance method " do
      expect(subject).to respond_to(:balance?)
  end 
  
  it "responds to 'add_money' method" do 
      expect(subject).to respond_to(:add_money).with(1).argument 
      expect(subject.add_money(1)).to be_integer
  end 
  
  
end 