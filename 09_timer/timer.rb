class Timer

  def initialize(secs = 0)
    @secs = secs
  end
  
  def seconds=(secs)
    @secs = secs
  end
  
  def seconds
    @secs
  end
  
  def padded
    if @hours < 10
      @hours = "0#{@hours}"
    end
    if @minutes < 10
      @minutes = "0#{@minutes}"
    end
    if @seconds < 10
      @seconds = "0#{@seconds}"
    end
  end
  
  def time_string
    @hours = @secs/3600
    @minutes = (@secs%3600)/60
    @seconds = (@secs%3600)%60
    padded
    "#{@hours}:#{@minutes}:#{@seconds}"
  end
  
end
