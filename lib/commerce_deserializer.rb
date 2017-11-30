class CommerceDeserializer

  def self.deserialize!(json_response)
    all_included_categories = deserialize_associations_into_hash(json_response)

    commerces = Array.new
		if json_response[:data].is_a?(Array)
			json_response[:data].map do |d|
				commerces << Commerce.new(d[:id].to_i, d[:attributes], 
																	get_commerce_categories(
																		d[:relationships][:categories][:data], 
																		all_included_categories)
																 )
			end

			return commerces
	  else
			return Commerce.new(json_response[:data][:id].to_i, 
													json_response[:data][:attributes], 
													get_commerce_categories(
														json_response[:data][:relationships][:categories][:data], 
														all_included_categories)
												 )
				
    end

  end


  private 


    def self.get_commerce_categories(categories_data, all_included_categories)
      commerce_categories = Array.new
      categories_data.map do |cat_data|
        if all_included_categories.has_key? cat_data[:id]
          commerce_categories << all_included_categories[cat_data[:id]]
        end
      end
      commerce_categories
    end

    def self.deserialize_associations_into_hash(json_response)
      categories = Hash.new
      json_response[:included].map do |included|
        categories[included[:id]] = included[:attributes][:name]
      end
      categories  
    end
end
