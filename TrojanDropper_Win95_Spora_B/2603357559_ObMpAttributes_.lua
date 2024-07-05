local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if (string.find(L0_0, "->(Ole", 1, true) or string.find(L0_0, ".wsf", 1, true) or string.find(L0_0, "_pdf", 1, true)) and headerpage[1] == 60 and headerpage[2] == 106 and headerpage[3] == 111 and headerpage[4] == 98 and headerpage[5] == 62 then
  return mp.INFECTED
end
return mp.CLEAN
