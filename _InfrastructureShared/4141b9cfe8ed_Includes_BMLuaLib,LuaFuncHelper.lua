local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = versioning
L0_0 = L0_0.GetTestMode
L0_0 = L0_0()
if L0_0 ~= 65000 then
  L0_0 = MpCommon
  L0_0 = L0_0.IsSampled
  L1_1 = 1000
  L2_2 = true
  L3_3 = true
  L4_4 = true
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4)
  if L0_0 == false then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p1
L2_2 = "NRI-DNS-ALT-SRV"
L3_3 = string
L3_3 = L3_3.format
L4_4 = "%s_%s"
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5, L0_0)
L4_4 = MpCommon
L4_4 = L4_4.GetPersistContextCountNoPath
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 and L4_4 > 0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = isAlternateDNSServer
L5_5 = L5_5(L0_0)
if L5_5 then
  L5_5 = "altDNS_"
  L5_5 = L5_5 .. L0_0
  if not MpCommon.QueryPersistContextNoPath(L5_5, L1_1) then
    MpCommon.AppendPersistContextNoPath(L5_5, L1_1, 3600)
  end
  if MpCommon.GetPersistContextCountNoPath(L5_5) > 5 then
    MpCommon.AppendPersistContextNoPath(L2_2, L5_5, 60)
    return mp.INFECTED
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
