class ShoutsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :assign_user, :only => [:create]

  respond_to  :html, :js

  def index
    @shout = Shout.new
    index!
  end

  def fetch
    collection
  end

  protected

  def collection
    @shouts ||= end_of_association_chain.paginate(:page => params[:page])
  end

  private

  def assign_user
    params[:shout][:user] = current_user
  end

end

