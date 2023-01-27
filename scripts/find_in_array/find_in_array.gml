/// @function find_in_array(array, size, term);

function find_in_array(array, i, term){
    i--;
     
    if (i < 0) {
        return -4;
    }
	
	else{
	    if (array[i] == term) {
			return i;
	    }
	}

    return find_in_array(array, i, term);
}


