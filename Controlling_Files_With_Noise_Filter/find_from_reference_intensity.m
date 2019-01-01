function [new_con_inten] = find_from_reference_intensity(original_range,adjusted_range,find_value)

location_original = original_range == find_value;
new_con_inten = adjusted_range(location_original);

end
