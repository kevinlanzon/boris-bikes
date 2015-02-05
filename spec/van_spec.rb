require 'van'

describe Van do
	let(:van){Van.new}
	let(:station){DockingStation.new}
	let(:bike){double :bike, {broken?: false}}
	let(:broken_bike){double :bike, {broken?: true}}


	it 'should collect broken bikes from the station' do
		
		
	end
end	
