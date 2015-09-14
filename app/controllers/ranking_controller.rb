class RankingController < ApplicationController
  def have
    ranking_ids = Have.group(:item_id).order("count_all desc").limit(10).count.keys
    arr = []
    ranking_ids.each do |ranking_id|
      arr << Item.find(ranking_id)
    end
    
    @items = arr
  end
    
  def want
    ranking_ids = Want.group(:item_id).order("count_all desc").limit(10).count.keys
    arr = []
    ranking_ids.each do |ranking_id|
      arr << Item.find(ranking_id)
    end
    
    @items = arr
  end
end
