#macro technology_count 20
#macro symbol_count 74
#macro infobox_x 520

#region player stats
globalvar gold;
gold = 0;
globalvar goldTurn;
goldTurn = 1;
#endregion

#region owned & symbol stats

globalvar owned;
owned = ds_list_create();
globalvar h_food;
globalvar s_cp;
globalvar s_armor;
globalvar s_turn;
globalvar s_prodCount;
globalvar h_turnProd;
globalvar h_curProd;
#region ds list initialisation
h_food = ds_list_create();
s_cp = ds_list_create();
s_armor = ds_list_create();
s_turn = ds_list_create();
s_prodCount = ds_list_create();
h_turnProd = ds_list_create();
h_curProd = ds_list_create();
#endregion
#endregion

#region year & era
globalvar year;
year = -4000;
globalvar era;
era = 0;

globalvar newera;
newera = 0;
#endregion

#region available & shuffle ds_list
globalvar available;
available = ds_list_create();
globalvar shuffled;
shuffled = ds_list_create();
#endregion

#region symbol rarity
globalvar rarity;
rarity = ds_list_create();
#endregion

#region interact

globalvar main;
main = -100;
globalvar object;
object = -100;

globalvar mainX;
mainX = 0;
globalvar mainY;
mainY = 0;

globalvar objX;
objX = 0;
globalvar objY;
objY = 0;

#endregion

#region production
globalvar turnProdExtra;
turnProdExtra = 0;
#endregion

#region trade
globalvar discount_common;
globalvar discount_uncommon;
globalvar discount_rare;
globalvar discount_unique;
discount_common = 0;
discount_uncommon = 0;
discount_rare = 0;
discount_unique = 0;

globalvar discount_all;
discount_all = 0;
#endregion

#region food extra
globalvar fruits;
fruits = 0;
globalvar wheat;
wheat = 0;
globalvar rice;
rice = 0;
globalvar cow;
cow = 0;
globalvar sheep_food;
sheep_food = 0;
globalvar sheep_gold;
sheep_gold = 0;
globalvar fish;
fish = 0;
globalvar pearl;
pearl = 0;
globalvar horse_food;
horse_food = 0;
globalvar horse_prod;
horse_prod = 0;

#endregion

#region facility extra
globalvar pyramid;
pyramid = -1;
globalvar pharos;
pharos = 0;
global.cheomseongdae = -1;
#endregion

#region troop extra
globalvar warrior;
warrior = 0;
globalvar armour1;
armour1 = 0;
globalvar armour;
armour = 0;
#endregion

#region figure stats

global.figureP = 0;
global.figureMax = 20;
global.figureTurn = 0;

global.figurePick = 0;

#endregion

globalvar gameover;
gameover = 0;