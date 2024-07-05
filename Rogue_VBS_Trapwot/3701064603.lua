local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 33328 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 5
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 2250901766 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 9
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 == 234325576 then
    L0_0 = mp
    L0_0 = L0_0.readu_u16
    L1_1 = headerpage
    L2_2 = 13
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 == 1793 then
      L0_0 = headerpage
      L0_0 = L0_0[15]
    end
  end
elseif L0_0 ~= 2 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataBool
L1_1 = "Lua:SignedVBEVBSFile"
L2_2 = true
L1_1 = L0_0(L1_1, L2_2)
if L0_0 ~= 0 or not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L3_3 = L2_2.find
L3_3 = L3_3(L2_2, "\006\003U\004\t", 176, true)
if L3_3 == nil then
  return mp.CLEAN
end
if mp.crc32(-1, L2_2, L3_3, 128) == 16967505 then
  if mp.get_mpattribute("RPF:AnyFileHasIOAVURL") then
    return mp.INFECTED
  else
    mp.set_mpattribute("Rogue:VBS/TrapwotCert")
  end
end
return mp.CLEAN
