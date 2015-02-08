require 'garage'

describe Garage do
  let(:garage) { Garage.new }
  let(:broken_bike) {double :bike, {broken?: true}}
  let(:fixed_bike) {double :bike, {fix!: true}}

  it 'should be able receive broken bikes' do
    expect(garage.broken_bikes.count).to eq(0)
    garage.dock(broken_bike)
    expect(garage.broken_bikes.count).to eq(1)
  end

  it 'should be able to release fixed bikes' do
    expect(garage.fixed_bikes.count).to eq(0)
    garage.dock(fixed_bike)
    expect(garage.fixed_bikes.count).to eq(1)
  end

end