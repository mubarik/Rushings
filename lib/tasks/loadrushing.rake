namespace :loadrushing do
	desc "Loading the rushings from Json file"
	task load_rushings: :environment do
		JSON.parse(File.read('rushing.json')).each do |element|
			value = { player: element['Player'], team: element['Team'], 
				pos: element['Pos'], attg: element['Att/G'], att: element['Att'],
				yrds: element['Yds'], avg: element['Avg'], ydsg: element['Yds/G'], td: element['TD'], 
				lng: element['Lng'] , first: element['1st'], firstpercent: element['1st%'], 
				twentyplus: element['20+'], fortyplus: element['40+'], fum: element['FUM'] }
				Rushing.create(value)
				puts value
		end
	end
end

