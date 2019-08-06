class HabibController < ApplicationController
	#def index
	#   a=1
	#	b=2
	#	if a<b
	#		render('index')
	#		else
	#			render('welcome')
	#	end
	#end
	
	def index
		@id = params['id']
		@page = params['page']
		render('index')
	end
  
	def welcome
		@id = params['id']
		@page = params['page']
		@array = [1,2,3,4,5,6,7,8,9] #@array is instance variable
		render('welcome')
	end
	
	def login
		#redirect_to(:controller=>'index',:action=>'index')
		redirect_to( :action=>'index')
	end
	
	def facebook
		redirect_to('https://www.facebook.com/')
	end
	
	def arrayLoop
		
	end
	
	def test
		@name='Safa'
		render('test')
	end
	
	def page
		@x='Habib'
		render('page')
	end
end
