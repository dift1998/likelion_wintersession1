class RandomController < ApplicationController
  def index

  end

  def result
  	@user = params[:name]
  	results = ['착함', '멍청함', '멋있음', '병맛', '진지', '근엄']
  	 @result = results.sample(3)
  end
end
