class StateGenerator

	attr_accessor :state

	def initialize
		@state = generateStateKey()
	end

	private 
	def generateStateKey
		return "fjsdhjkf748"
	end

end