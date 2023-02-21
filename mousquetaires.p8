pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
--musketeers

function _init()
	p={x=60,y=60,speed=4}
end

function _update60()

end

function _draw()
	cls()
	spr(2,60,80)
end
-->8
--map

function draw_map()
map (0,0,0,0,128,64)
end

-->8
--players
-->8
--camera
function update_camera()
camera(p.x*8,p.y*8)
end
__gfx__
00000000333333333398883333333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033333333888888883bbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007003333333330404033b33b34bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770003333333330044433bab444bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770003333333330099a3333a44b33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700333333333a099a3333344333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333333411143333344333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333333313133334444433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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

__map__
0101010101010101010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101030101030303030303010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0103030301030301020101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
