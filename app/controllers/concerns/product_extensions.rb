module ProductExtensions
  extend ActiveSupport::Concern

  included do
    singleton_class.prepend ClassMethods
    prepend InstanceMethods
  end

  module ClassMethods

  end

  module InstanceMethods
    def show
      super
      @color = params[:color]
    end
  end

end