class Commerce

  attr_accessor :name, :email, :address, :website, 
								:logo, :rating, :categories

  def initialize(attributes, associations)
    @name       = attributes[:name]
    @email      = attributes[:email]
    @address    = attributes[:address]
    @website    = attributes[:website]
    @logo       = attributes[:logo]
		@rating 		= attributes[:rating]
    @categories = associations
  end

end
