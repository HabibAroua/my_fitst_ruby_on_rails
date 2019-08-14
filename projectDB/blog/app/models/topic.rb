class Topic < ApplicationRecord
	
	scope :search , lambda {|query| where (["name LIKE ? ","%#{query}#"])}
	scope :newest_first , lambda{order ("created_at DESC")}
	scope :visible , lambda{ where(:visible => true) }
	scope :invisible , lambda{where(:visible => false ) }
	scope :sorted , lambda {order(:position)}
	scope :show , lambda {puts("Normal Message")}
	
	has_many :pages # with plural we add S in the last of word
end
