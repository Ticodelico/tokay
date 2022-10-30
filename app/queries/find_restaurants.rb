class FindRestaurants
    attr_reader :restaurants
  
    def initialize(restaurants = initial_scope)
      @restaurants = restaurants
    end
  
    def call(params = {})
      scoped = restaurants
      scoped = filter_by_name(scoped, params[:name])
    end
  
    private
  
    def initial_scope
     Restaurant
    end
  
    def filter_by_name(scoped, name)
      return scoped unless name.present?
  
      scoped.where(name: name)
    end
  end