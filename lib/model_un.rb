module ModelUn
  require "model_un/data"
  
  class << self
    
    def convert(string)
      self.convert_state_name(string.upcase)
    end
    
    def convert_state_abbr(state_abbr)
      self.convert_state_abbreviation(state_abbr)
    end
    
    def convert_state_abbreviation(state_abbr)
    end
    
    def convert_state_name(state_name)
      return US_STATE_ABBR[US_STATE_NAMES.index(state_name)]
    end
  end
end
