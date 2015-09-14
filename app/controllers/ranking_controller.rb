class RankingController < ApplicationController
  def have
    ranking_ids = Have.group(:item_id).order("count_all desc").limit(10).count.keys
    @items = Item.find(ranking_ids).sort_by{|o| ranking_ids.index(o.id)} 
  end
    
  def want
    ranking_ids = Want.group(:item_id).order("count_all desc").limit(10).count.keys
    @items = Item.find(ranking_ids).sort_by{|o| ranking_ids.index(o.id)} 
  end
end
