class Lr8Controller < ApplicationController
  def input
  end

  def output
    @amount = params[:amount]
    @array = params[:array]
    @result = @array.split(" ").select{|i| (s = (1..(i.to_i / 2)).to_a.select{|j| i.to_i % j == 0}.sum).eql? i.to_i}
    @indexs = @result.map{|i| @array.split(" ").index(i)}
    @cuts = Array.new
    @cuts[0] = Array.new
    @cuts[0][0] = @result[0]
    ind = 0 
    1.upto(@result.size - 1) do |i|
      if @indexs[i] != @indexs[i - 1] + 1 then
        ind += 1 
        @cuts[ind] = Array.new
      end
      @cuts[ind].append(@result[i])
    end
  end

  def perfect(a)
  end
end
