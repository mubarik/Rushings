class RushingsDatatable < ApplicationDatatable

	private

	def data
		rushings.map do |rushing|
			[].tap do |column|
				column << rushing.player
				column << rushing.team
				column << rushing.pos
				column << rushing.attg
				column << rushing.att
				column << rushing.yrds
				column << rushing.avg
				column << rushing.ydsg
				column << rushing.td
				column << rushing.lng
				column << rushing.first
				column << rushing.firstpercent
				column << rushing.twentyplus
				column << rushing.fortyplus
				column << rushing.fum
			end
		end
	end

	def count
		Rushing.count
	end

	def total_entries
		rushings.total_count
		#rushings.total_entries    if used will_paginate
	end

	def rushings
		@rushings ||= fetch_rushings
	end

	def fetch_rushings
		search_string = []
		columns.each do |term|
			search_string << "#{term} like :search"
		end
		rushings = Rushing.order("#{sort_column} #{sort_direction}")
		rushings = rushings.page(page).per(per_page)
		rushings = rushings.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
	end

	def columns
		%w(player team pos attg att yrds avg ydsg td lng first firstpercent twentyplus fortyplus fum)
	end 

end