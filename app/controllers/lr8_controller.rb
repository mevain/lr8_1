class Lr8Controller < ApplicationController
  def input
  end

  def output
    @amount = params[:amount]
    @array = params[:array]
    @result = @array.split(" ").select{|i| perfect(i.to_i)}
    #@result = (1..(6 / 2)).to_a
    perfect(6)
  end

  def perfect(a)
    return (1..(a / 2)).to_a.select{|i| a % i == 0}.sum.eql? a
  end
end
