module ModelUN
  require "model_un/data"
  require 'yaml'
  
  class << self
    
    def convert(string)
      if string.length <= 3
        self.convert_state_abbr(string.upcase)
      else
        self.convert_state_name(string.upcase)
      end
    end
    
    def convert_state_abbr(state_abbr)
      self.convert_state_abbreviation(state_abbr)
    end
    
    def convert_state_abbreviation(state_abbr)
      begin
        return STATE_NAMES[STATE_ABBR.index(state_abbr)].downcase.gsub(/\b\w/){$&.upcase}
      rescue Exception
        return state_abbr
      end
    end
    
    def convert_state_name(state_name)
      begin
        return STATE_ABBR[STATE_NAMES.index(state_name.upcase)]
      rescue Exception
        return state_name.downcase.gsub(/\b\w/){$&.upcase}
      end
    end
  end
end
