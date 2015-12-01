class Group < ActiveRecord::Base
	# 驗證title不可為空白
	# validates :title, presence: true	#此行也可, 訊息為預設英文
	validates :title, presence: { message: '此欄位不可為空白!' }

	has_many :posts
	
	belongs_to :owner, class_name: "User", foreign_key: :user_id
end
