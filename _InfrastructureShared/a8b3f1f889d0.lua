local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.wp2
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.utf16to8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.wp2
L0_0 = L0_0(L1_1)
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p1
L2_2 = #L0_0
if not (L2_2 >= L3_3) then
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L3_3, L4_4)
elseif L2_2 ~= L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.IsFileExists
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = versioning
L2_2 = L2_2.GetCloudBlockLevel
L2_2 = L2_2()
if L2_2 == 4 then
  L2_2 = mp
  L2_2 = L2_2.TriggerScanResource
  L2_2(L3_3, L4_4)
end
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContextCountNoPath
L2_2 = L2_2(L3_3)
if L2_2 > 0 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetPersistContextNoPath
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L7_7
    L10_10 = "([%w%p]+);([%w%p]+);([%w%p]+)"
    L10_10 = L8_8(L9_9, L10_10)
    mp.ReportLowfi(L10_10, tonumber(L9_9))
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
