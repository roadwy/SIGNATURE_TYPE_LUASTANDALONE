local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  L1_1 = pehdr
  L1_1 = L1_1.DataDirectory
  L2_2 = pe
  L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_SECURITY
  L1_1 = L1_1[L2_2]
  L1_1 = L1_1.RVA
  L2_2 = pehdr
  L2_2 = L2_2.DataDirectory
  L3_3 = pe
  L3_3 = L3_3.IMAGE_DIRECTORY_ENTRY_SECURITY
  L2_2 = L2_2[L3_3]
  L2_2 = L2_2.Size
  if L1_1 ~= 0 and not (L2_2 < 3654) and not (L0_0 <= L1_1) then
    L3_3 = L0_0 - L1_1
  elseif L2_2 > L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L4_4 = false
  L3_3(L4_4)
  L3_3 = 128
  L4_4 = mp
  L4_4 = L4_4.readfile
  L4_4 = L4_4(L1_1 + 3526, L3_3)
  if mp.crc32(-1, L4_4, 1, L3_3) == 381009505 or mp.crc32(-1, L4_4, 1, L3_3) == 1730649905 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
