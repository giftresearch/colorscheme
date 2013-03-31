require 'colorscheme/colorscheme'
module Colorscheme
  class Analogous < Colorscheme
    def initialize(color=nil, degrees=30)
      super(color)
      @colors.push(@source_color.to_rgb)
      @colors.concat analogous(@source_color, degrees)
    end
  end
end
