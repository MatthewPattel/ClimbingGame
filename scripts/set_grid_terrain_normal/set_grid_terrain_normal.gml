/// @description set_grid_terrain_normal()

var str_terrain;

str_terrain = choose(
"11112111" +
"11211111" +
"11111112" +
"21111111" +
"11121111" +
"11111121" +
"12111111" +
"11111211",

//ROCKS
"11112211" +
"12211111" +
"12212121" +
"21112111" +
"11112111" +
"12111211" +
"11121111" +
"12211121",

"12222111" +
"22222211" +
"22211221" +
"12222112" +
"21221222" +
"21222222" +
"12222112" +
"21212221",

"21122122" +
"12221222" +
"12222222" +
"21222212" +
"21222221" +
"22222222" +
"22212222" +
"21221222",

//CLIFF
"11111111" +
"11111111" +
"11111111" +
"11111111" +
"11111111" +
"11111111" +
"11111111" +
"11111111",

"13333111" +
"33113331" +
"33111133" +
"33311111" +
"11331111" +
"13333111" +
"33113311" +
"31111331",

"11311133" +
"13311333" +
"31133331" +
"11333311" +
"13333111" +
"13313111" +
"33313311" +
"33111111",

//ICE
"44411111" +
"14441111" +
"14444111" +
"11144411" +
"11114411" +
"11114441" +
"11111441" +
"11111141",

"11114441" +
"11114444" +
"11111444" +
"14441111" +
"44444111" +
"44444411" +
"44444411" +
"14444111",

"11144411" +
"11444441" +
"14444441" +
"14444411" +
"14444441" +
"14444441" +
"11444441" +
"11144411",

//STONE
"11111111" +
"11555111" +
"11555111" +
"11555111" +
"11151111" +
"15555111" +
"11155555" +
"11111111");

return str_terrain;
