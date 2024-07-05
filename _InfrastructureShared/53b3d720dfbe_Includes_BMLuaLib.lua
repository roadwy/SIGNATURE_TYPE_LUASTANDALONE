local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = {}
L1_1[".exe"] = true
L1_1[".dll"] = true
L3_3 = L0_0
L2_2 = L0_0.sub
L2_2 = L2_2(L3_3, -4)
L3_3 = L1_1[L2_2]
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.IsFileExists
L3_3 = L3_3(L0_0)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.IsKnownFriendlyFile
  L3_3 = L3_3(L0_0, false, false)
  if L3_3 == false then
    L3_3 = bm
    L3_3 = L3_3.add_related_file
    L3_3(L0_0)
    L3_3 = {}
    table.insert(L3_3, L0_0)
    MpCommon.SetPersistContextNoPath("ServiceBinHijack", L3_3, 3600)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
