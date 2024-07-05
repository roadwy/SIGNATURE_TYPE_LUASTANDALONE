local L0_0, L1_1, L2_2, L3_3
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
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "PESTATIC:cleanstub_autoitv"
    L0_0 = L0_0(L1_1)
  end
elseif L0_0 then
  L0_0, L1_1, L2_2 = nil, nil, nil
  L3_3 = hstrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.match_offsets_count
    if L2_2 >= 6 then
      L3_3 = hstrlog
      L3_3 = L3_3[1]
      L3_3 = L3_3.match_offsets
      L1_1 = L3_3[4]
      L3_3 = hstrlog
      L3_3 = L3_3[1]
      L3_3 = L3_3.VA
      L0_0 = L3_3 + L1_1
      L3_3 = mp
      L3_3 = L3_3.readu_u32
      L3_3 = L3_3(pe.mmap_va(L0_0, 4), 1)
      if mp.readu_u32(pe.mmap_va(L3_3, 4), 1) ~= 1162627398 then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
