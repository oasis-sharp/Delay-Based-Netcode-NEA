/// @function add_to_array(array, term);

function add_to_array(array, term){
	if(find_in_array(array,array_length(array), term) == -4){
		array_push(array, term)
		return true;
	}
	
	return false;
}

