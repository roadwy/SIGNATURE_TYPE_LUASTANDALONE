local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 98304 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 < 81920 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
if string.find(L1_1, "\n", 1, true) ~= nil then
  return mp.CLEAN
end
if string.match(L1_1, "%(function%((%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+)") == nil then
  return mp.CLEAN
end
mp.set_mpattribute("SCRIPT:Worm:JS/Proslikefan_Lowfi3")
return mp.CLEAN
