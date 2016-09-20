class PagesController < ApplicationController
  def home
  	if current_user
  		# Se usuario estiver logado vai para cá como default
  		#redirect_to tasks_path
  		redirect_to projects_path
  	end
  end

  def about
  end

  def test
  end
end