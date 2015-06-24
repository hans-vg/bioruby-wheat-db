class Gene < ActiveRecord::Base
	belongs_to :gene_set

	def add_field(text)
		arr = text.split(":", 2)
		#puts arr.inspect
		arr[0] = "possition" if arr[0] == "scaffold" or arr[0] == "chromosome"
		arr.unshift("description") if arr.size == 1

		#puts arr.inspect
		self.send(arr[0]+'=',arr[1])

	end

	def to_s
		name
	end
end
