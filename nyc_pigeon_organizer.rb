def nyc_pigeon_organizer(data)
  # write your code here!
pidg_hash_all = {}
  
 
   data.each do |attribute, dataHash|
     # attribute = color, gender, lives
     
    dataHash.each do |attributeValue, nameArray|
     # attributeValues = purple, grey, male, "Subway", etc, or data[:attribute]
         nameArray.each do |name|
             pidg_hash_all_data = pidg_hash_all[name] # creates hash where name is key
             if pidg_hash_all_data == nil
                 pidg_hash_all_data = {}
                 pidg_hash_all_data[:color] = []
                 pidg_hash_all_data[:gender] = []
                 pidg_hash_all_data[:lives] = []
             end
             pidg_hash_all_data[attribute] << attributeValue.to_s
             pidg_hash_all[name] = pidg_hash_all_data
         end
     end
   end
   pidg_hash_all
  end


#67