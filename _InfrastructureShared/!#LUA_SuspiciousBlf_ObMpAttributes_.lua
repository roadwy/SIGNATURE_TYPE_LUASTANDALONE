local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 9264 or L0_0 > 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2 = true
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(false)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(9256, 8)
if string.byte(L3_3, 1) == 0 and string.byte(L3_3, 2) == 0 and string.byte(L3_3, 3) == 0 and string.byte(L3_3, 4) == 0 and string.byte(L3_3, 5) == 0 and string.byte(L3_3, 6) == 0 and string.byte(L3_3, 7) == 0 and string.byte(L3_3, 8) == 0 then
  L2_2 = false
end
mp.readprotection(true)
if L1_1 or L2_2 then
  mp.set_mpattribute("BM_SUSP_CLFS_FILE")
end
return mp.CLEAN
