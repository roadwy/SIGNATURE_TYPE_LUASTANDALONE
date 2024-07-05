local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 256 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
if ".dat" ~= string.sub(L1_1, -4) then
  return mp.CLEAN
end
if 170 ~= headerpage[1] then
  return mp.CLEAN
end
if 254 ~= headerpage[2] then
  return mp.CLEAN
end
if 14 ~= headerpage[3] then
  return mp.CLEAN
end
return mp.INFECTED
