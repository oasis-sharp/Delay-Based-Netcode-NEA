function create_level(level)
{
    var width = array_length(level[0])
    var height = array_length(level)

    for (var i = 0; i < height; i += 1)
    {
        for (var j = 0; j < width; j += 1)
        {
            switch (level[i][j])
            {
                case 0:
                    // do nothing
                    break;
                case 1:
                    instance_create_layer(j * 8, i * 8,"Instances_1", block_obj)
                    break;
                case 2:
                    instance_create_layer(j * 8, i * 8, "Instances" , player);
                    break;
            }
        }
    }
}
