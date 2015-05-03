require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  let(:bike) {double :bike, {broken?: false}}
  let(:broken_bike) {double :bike, {broken?: true}}
  let(:holder) { ContainerHolder.new }

  it 'should accept a bike' do
    expect{holder.dock(bike)}.to change{holder.bike_count}.by(1)
  end

  it 'should release a bike' do
    holder.dock(bike)
    expect{holder.release(bike)}.to change{holder.bike_count}.by(-1)
  end

  it 'should know when it\'s full' do
    20.times{holder.dock(bike)}
    expect(holder).to be_full
  end

  it 'should not accept a bike if it\'s full' do
    20.times{holder.dock(bike)}
    expect{holder.dock(bike)}.to raise_error 'Station is full'
  end

  it 'should provide a list of available bikes' do
    holder.dock(bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq([bike])
  end
end
