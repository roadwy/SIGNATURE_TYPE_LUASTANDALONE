local L0_0, L1_1, L2_2
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
  L0_0, L1_1 = nil, nil
  L2_2 = hstrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.match_offsets
    L0_0 = L2_2[1]
    L2_2 = hstrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.VA
    L1_1 = L2_2 + L0_0
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L2_2 = L2_2(pe.mmap_va(L1_1, 4), 1)
    if mp.readu_u32(pe.mmap_va(L2_2, 4), 1) ~= 3192604835 then
      return mp.INFECTED
    end
    if mp.readu_u32(pe.mmap_va(L2_2 + 4, 4), 1) ~= 2840226968 then
      return mp.INFECTED
    end
    if mp.readu_u32(pe.mmap_va(L2_2 + 8, 4), 1) ~= 173231257 then
      return mp.INFECTED
    end
    if mp.readu_u32(pe.mmap_va(L2_2 + 12, 4), 1) ~= 2101925510 then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
