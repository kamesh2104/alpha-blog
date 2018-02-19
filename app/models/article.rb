class Article <  ActiveRecord::Base

  validates :title ,presence:true , length: { minimum:3 , maximun:30 }
  validates :description ,presence:true , length: { minimum:10, maximun:300 }


end