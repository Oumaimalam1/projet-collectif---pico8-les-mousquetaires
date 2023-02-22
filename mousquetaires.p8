pico-8 cartridge // http://www.pico-8.com
version 38
__lua__

--init
function _init()
	create_player()
end

function _update()
player_mouvement()
update_camera()
end 

function _draw()
cls()
	 draw_map()
  draw_player()


end
-->8
--map

function draw_map()
map (0,0,0,0,128,64)

end

function check_flag(flag,x,y)
local sprite=mget(x,y)
return fget(sprite,flag)

end


-->8
--players

function create_player()
p={x=6,y=4,sprite=2}
end

function player_mouvement()
newx=p.x
newy=p.y
if (btnp(➡️)) newx+=1
if (btnp(⬅️)) newx-=1
if (btnp(⬇️)) newy+=1
if (btnp(⬆️)) newy-=1

 if not check_flag(0,newx,newy) 
then  p.x=mid(0,newx,127)
      p.y=mid(0,newy,63)
 end
end

function draw_player()
spr(p.sprite,p.x*8,p.y*8)
end
-->8
--camera

function update_camera()
camx=mid(0,p.x-7.5,31-15)
camy=mid(0,p.y-7.5,31-15)
camera(camx*8,camy*8)
end
 
 
 function new_camera()
 camx=flr(p.x/16)*16
 camy=flr(p.y/16)*16
 camera(camx*8,camy*8)
end
__gfx__
0000000033333333339888333333333333333333444444444444444411111114111111114444444441111111333333344ddddddd111111144111111115444451
0000000033333333888888883bbbbbb333333933ddddddddddddddd41111111d111111114ddddddd41111111333333344111111111111114d111111116ffff61
007007003333333330404033b33b34bb33339a931111111111111114111111111111111141111111411111113333333441111111111111141111111115444451
000770003333333330044433bab444bb333339331111111111111114111111111111111141111111411111113333333441111111111111141111111115444451
000770003333333330099a3333a44b3333c333331111111111111114111111111111111141111111411111113333333441111111111111141111111115444451
00700700333333333a099a33333443333cac33331111111111111114111111111111111141111111411111113333333441111111111111141111111116ffff61
0000000033333333341114333334433333c333331111111111111114111111111111111141111111411111113333333441111111111111141111111115444451
00000000333333333313133334444433333333331111111111111114111111111111111141111111411111114444444441111111111111141111111115444451
33333333333333333333333333333333744334333543364333333333334533433333333363333333333333333333333333333333454444543333333333333333
33338333333333333333333333333333344364433443344334444354634433433335444444444453333333333333333333b33333d6ffff6d33333bb333bbbb33
533883634444444444f3333333333444343333433443344344334444444333433344443644433443333333333333333333fbb3331544445133333bb39bb338bb
33898833444444444f5f33333333444434433443343333445333333333333343334433333333334333333333333333333bbb333315444451333b3333b844bb93
34899845444444444f5f3333333344443543343334433333333333336333444333453333333333433333333333333333333b333315444451333333333bb4bb33
338a9833444444444f5f3333333344443343343333433444436444444444444333443344463334433744433333333333333333b316ffff613333333333344333
644884434444444444f333333333344434433443354444634444334444333353334333454433344334543443333333333333333315444451b333b33333444333
333443353333333333333333333333333473344633333333333333363333333333433343344334453433334533333333333b3333154444513333333334444433
33311133333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33313133333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
32111113333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
23111113333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
21011101333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
21100011333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
31111111333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
32111113333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000003030303030000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000303030300000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000303030300030003030300030300000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888ffffff882222228888888888888888888888888888888888888888888888888888888888888888228228888ff88ff888222822888888822888888228888
88888f8888f882888828888888888888888888888888888888888888888888888888888888888888882288822888ffffff888222822888882282888888222888
88888ffffff882888828888888888888888888888888888888888888888888888888888888888888882288822888f8ff8f888222888888228882888888288888
88888888888882888828888888888888888888888888888888888888888888888888888888888888882288822888ffffff888888222888228882888822288888
88888f8f8f88828888288888888888888888888888888888888888888888888888888888888888888822888228888ffff8888228222888882282888222288888
888888f8f8f8822222288888888888888888888888888888888888888888888888888888888888888882282288888f88f8888228222888888822888222888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555550000000000000000000000000000000000000000000000000000000000000000005555550000000000000000000000000000007777777777775555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227000000000075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550333333333333333399999999888888888888888888888888333333333333333305555550000000000011111111112222222227033333333075555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550000000000011111111112222222227000000000075555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666667777777777775555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550888888888888888888888888888888888888888888888888888888888888888805555550444444444455555555556666666666777777777705555555
55555550333333330000000044444444000000004444444400000000333333333333333305555550444444444455555555556666666666777777777705555555
55555550333333330000000044444444000000004444444400000000333333333333333305555550444444444455555555556666666666777777777705555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000004444444400000000444444440000000033333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000000000000044444444444444444444444433333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000000000000044444444444444444444444433333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
5555555033333333000000000000000044444444444444444444444433333333333333330555555088888888889999999999aaaaaaaaaabbbbbbbbbb05555555
55555550333333330000000000000000444444444444444444444444333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
55555550333333330000000000000000444444444444444444444444333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
55555550333333330000000000000000444444444444444444444444333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
55555550333333330000000000000000444444444444444444444444333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
55555550333333330000000000000000444444444444444444444444333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555550ccccccccccddddddddddeeeeeeeeeeffffffffff05555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555550000000000000000000000000000000000000000005555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555555555555555555555555555555555555555555555555555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555555555555555555555555555555555555555555555555555555
555555503333333300000000000000009999999999999999aaaaaaaa333333333333333305555555555555555555555555555555555555555555555555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555550000000555556667655555555555555555555555555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555550000000555555666555555555555555555555555555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa33333333333333330555555000000055555556dddddddddddddddddddddddd5555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa3333333333333333055555500030005555555655555555555555555555555d5555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555550000000555555576666666d6666666d666666655555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555550000000555555555555555555555555555555555555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555550000000555555555555555555555555555555555555555555
5555555033333333aaaaaaaa000000009999999999999999aaaaaaaa333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555556665666555556667655555555555555555555555555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555556555556555555666555555555555555555555555555555555
5555555033333333444444441111111111111111111111114444444433333333333333330555555555555555555556dddddddddddddddddddddddd5555555555
555555503333333344444444111111111111111111111111444444443333333333333333055555565555565555555655555555555555555555555d5555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555556665666555555576666666d6666666d666666655555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333334444444411111111111111111111111144444444333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333333333333311111111333333331111111133333333333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333333333333311111111333333331111111133333333333333333333333305555555555555555555555555555555555555555555555555555555
55555550333333333333333311111111333333331111111133333333333333333333333305555550005550005550005550005550005550005550005550005555
555555503333333333333333111111113333333311111111333333333333333333333333055555011d05011d05011d05011d05011d05011d05011d05011d0555
55555550333333333333333311111111333333331111111133333333333333333333333305555501110501110501110501110501110501110501110501110555
55555550333333333333333311111111333333331111111133333333333333333333333305555501110501110501110501110501110501110501110501110555
55555550333333333333333311111111333333331111111133333333333333333333333305555550005550005550005550005550005550005550005550005555
55555550333333333333333311111111333333331111111133333333333333333333333305555555555555555555555555555555555555555555555555555555
55555550000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
555555555555575555555ddd55555d5d5d5d55555d5d555555555d5555555ddd5555553398883355555555555555555555555555555555555555555555555555
555555555555777555555ddd55555555555555555d5d5d55555555d55555d555d555558888888856666666666666555557777755555555555555555555555555
555555555557777755555ddd55555d55555d55555d5d5d555555555d555d55555d55553040403356ddd6ddd6ddd6555577ddd775566666555666665556666655
555555555577777555555ddd55555555555555555ddddd5555ddddddd55d55555d55553004443356d6d6d6d666d6555577d7d77566dd666566ddd66566ddd665
5555555557577755555ddddddd555d55555d555d5ddddd555d5ddddd555d55555d555530099a3356d6d6d6d6ddd6555577d7d775666d66656666d665666dd665
5555555557557555555d55555d55555555555555dddddd555d55ddd55555d555d555553a099a3356d6d6d6d6d666555577ddd775666d666566d666656666d665
5555555557775555555ddddddd555d5d5d5d555555ddd5555d555d5555555ddd5555553411143356ddd6ddd6ddd655557777777566ddd66566ddd66566ddd665
55555555555555555555555555555555555555555555555555555555555555555555553313133356666666666666555577777775666666656666666566666665
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555566666665ddddddd5ddddddd5ddddddd5
00000000000000077777777770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333073398883370333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333078888888870bbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007003333330730404033703b34bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000333333073004443370b444bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770003333330730099a3370a44b33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700333333073a099a3370344333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333073411143370344333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333073313133370444433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000077777777770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__gff__
0000000100010101010001000100010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
011c0104010103011f0103010103010101011e01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
1e010120010101011c03031f0103011e1f0103031f0103010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
04011001011c011f01031f03011f01010301031f0303011c0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
01131112010101030301011e030103031f030101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0301010103011a010301030101011e01010101011e010101011e010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0301031f0103140301030101030101010118161616161901010101011c010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
010301011e011516161616161616161616170101010114010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
03011e0104010103041f1f03010101010301010109051d050506010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
03040301031f03010301030404030303010303090e080f0808080d0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
011f031f011f1f011c010403031f0103031f090e080101010808080d01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
04010104011e0101030404030401030109050e0d010101010108080808010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
011f03010101041f03010304040401010a080d01010101010108080808010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0b05050505050601010101011f0403010a080d01010101010108080808010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0c08080808080706011e0101010905050e08080d010101010808080d01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0a080801010a080705050505050e080808080808080808080808080d01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010a0808080808080808080d0404010808080d0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
