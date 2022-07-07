require_relative './../classes/label'
require_relative './../classes/item'

describe Label do
  before :each do
    @label = Label.new('Atomic Habits', 'pink')
    @item = Item.new('2010-09-09')
  end
  it 'gives error if more or less than 1 parameter as input' do
    expect { @label.add_item }.to raise_error(ArgumentError)
  end
  it 'is an instance of Label and takes 2 parameters' do
    expect(@label).to be_instance_of(Label)
  end

  it 'should be initialized with title' do
    expect(@label.title).to eql('Atomic Habits')
  end

  it 'should be initialized with color' do
    expect(@label.color).to eql('pink')
  end
end
