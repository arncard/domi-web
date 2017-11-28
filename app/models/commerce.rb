class Commerce

  attr_accessor :name, :email, :address, :website, :logo, :categories

  def initialize(attributes, associations)
    @name       = attributes[:name]
    @email      = attributes[:email]
    @address    = attributes[:address]
    @website    = attributes[:website]
    @logo       = attributes[:logo]
    @categories = associations
  end
end
