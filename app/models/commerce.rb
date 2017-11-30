class Commerce

  attr_accessor :id, :name, :email, :address, :website, 
								:logo, :rating, :categories, :reviews

  def initialize(id, attributes, associations)
		@id					= id
    @name       = attributes[:name]
    @email      = attributes[:email]
    @address    = attributes[:address]
    @website    = attributes[:website]
    @logo       = attributes[:logo]
		@rating 		= attributes[:rating]
    @categories = associations
  end

end
