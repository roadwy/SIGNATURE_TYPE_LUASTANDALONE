local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.is_delphi
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.ispackedwith
L1_1 = "AutoHotKey_+"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.ispackedwith
L1_1 = "AutoIt_+"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "Win32/AutoIt"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 2048000 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = pesecs
  L2_2 = pehdr
  L2_2 = L2_2.NumberOfSections
  L1_1 = L1_1[L2_2]
  L1_1 = L1_1.PointerToRawData
  L2_2 = pesecs
  L2_2 = L2_2[pehdr.NumberOfSections]
  L2_2 = L2_2.SizeOfRawData
  L1_1 = L1_1 + L2_2
  L2_2 = L0_0 - L1_1
  if L2_2 <= 20480 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L2_2(false)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L2_2 = L2_2(L1_1, 24)
  if mp.crc32(-1, L2_2, 1, 24) == 3604511246 then
    return mp.CLEAN
  end
  if mp.crc32(-1, L2_2, 1, 24) == 1339108276 then
    return mp.CLEAN
  end
  if mp.crc32(-1, L2_2, 1, 17) == 2991533544 then
    return mp.CLEAN
  end
  if mp.crc32(-1, L2_2, 1, 17) == 1547783364 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
