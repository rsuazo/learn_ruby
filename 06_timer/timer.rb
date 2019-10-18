class Timer
  #write your code here

  def initialize
    seconds
  end

  def seconds
      @timer = 0
  end

  def seconds=(value)
   @timer = value
     
  end

  def time_string
    if @timer < 60
      secs = @timer.to_s.rjust(2,"0")
      mins = (@timer / 60).floor.to_s.rjust(2,"0")
      hrs = (@timer / 3600).floor.to_s.rjust(2,"0")
    else
      if @timer < 3600
        secs = (@timer % 60).to_s.rjust(2,"0")
        mins = (@timer / 60).floor.to_s.rjust(2,"0")
        hrs = (@timer / 3600).floor.to_s.rjust(2,"0")
      else
        secs = (@timer % 60).to_s.rjust(2,"0")
        mins = ((@timer / 60) % 60).floor.to_s.rjust(2,"0")
        hrs = (@timer / 3600).floor.to_s.rjust(2,"0")
      end    
    end
   "#{hrs}:#{mins}:#{secs}"
  end
end
