local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 250 or L0_0 > 512 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
if ".txt" ~= string.sub(L1_1, -4) then
  return mp.CLEAN
end
if 49 ~= headerpage[1] and 51 ~= headerpage[1] then
  return mp.CLEAN
end
if 13 ~= headerpage[35] and 10 ~= headerpage[36] then
  return mp.CLEAN
end
if nil ~= L1_1:find("recover_file", 1, true) then
  return mp.INFECTED
end
if nil ~= L1_1:find("recovery_file", 1, true) then
  return mp.INFECTED
end
if nil ~= L1_1:find("restore_file", 1, true) then
  return mp.INFECTED
end
if nil ~= L1_1:find("how_recover", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
