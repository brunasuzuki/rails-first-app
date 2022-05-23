# app/controllers/pages_controller.rb
# class PagesController < ApplicationController
#   def about
#   end

#   def contact
#     @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
#   end

#   def home
#   end
# end

# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
