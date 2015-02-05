require 'docking_station'
require_relative '../lib/bike.rb'


describe DockingStation do
		
		let(:bike){double :bike, {broken?: false}}
		let(:broken_bike){double :bike, {broken?: true}}
		let(:station) {DockingStation.new}
	

	it 'should give us a list of available bikes' do
		station.dock(bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([bike])
	end


end



