local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 270000 or L0_0 > 300000 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
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
  L3_3 = 128
  L4_4 = 336
  if L1_1 ~= 0 then
    L5_5 = L4_4 + L3_3
    if not (L2_2 < L5_5) and not (L0_0 <= L1_1) then
      L5_5 = L0_0 - L1_1
    end
  elseif L2_2 > L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.readprotection
  L5_5(false)
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L1_1 + L4_4, L3_3)
  if mp.crc32(-1, L5_5, 1, L3_3) == 51922062 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
