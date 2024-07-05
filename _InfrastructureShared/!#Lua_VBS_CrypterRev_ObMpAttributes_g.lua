local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 20000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 300000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0 - 8192
L2_2 = L0_0 - 8192
L2_2 = L0_0 - L2_2
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(false)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(L1_1, L2_2)
L3_3 = string.lower(L3_3)
if L3_3:match("(%l-)%s-=%s-decode%(strreverse%((%l-)%)") == nil then
  return mp.CLEAN
end
if L3_3:match("(%l-)%s-=%s-decode%(strreverse%((%l-)%)") == nil then
  return mp.CLEAN
end
if L3_3:match("(%l-)%s-=%s-decode%(strreverse%((%l-)%)") ~= L3_3:match("(%l-)%s-=%s-decode%(strreverse%((%l-)%)") then
  return mp.CLEAN
end
if L3_3:match("(%l-)%s-=%s-.-%(0%)") == nil then
  return mp.CLEAN
end
if L3_3:match("(%l-)%s-=%s-.-%(0%)") ~= L3_3:match("(%l-)%s-=%s-decode%(strreverse%((%l-)%)") then
  return mp.CLEAN
end
return mp.INFECTED
