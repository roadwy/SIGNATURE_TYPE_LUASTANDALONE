local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = false
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L5_5 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2())
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = MpCommon
L2_2 = L2_2.QueryPersistContext
L3_3 = L1_1
L4_4 = "NewPECreatedNoCert"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = checkFileLastWriteTime
L4_4 = L1_1
L5_5 = 600
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= false then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[7]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[7]
  L3_3 = L3_3.utf8p2
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L3_3
L4_4 = L4_4(L5_5, "Uri=([^;]+)")
if not L4_4 then
  L5_5 = string
  L5_5 = L5_5.match
  L5_5 = L5_5(L3_3, "DestIp=([^;]*);")
  if not L5_5 or not isPublicIP(L5_5) then
    return mp.CLEAN
  end
  L0_0 = true
end
L5_5 = {}
L5_5.SIG_CONTEXT = "NONFRIENDLYIMAGE"
L5_5.CONTENT_SOURCE = "BM"
L5_5.TAG = "INTERFLOW"
if not L0_0 and mp.CheckUrl(L4_4) == 1 and mp.CheckUrl(L4_4) == 1 then
  return mp.CLEAN
end
if SafeGetUrlReputation({L4_4}, L5_5, false, 2000).urls[L4_4] and SafeGetUrlReputation({L4_4}, L5_5, false, 2000).urls[L4_4].determination == 2 and SafeGetUrlReputation({L4_4}, L5_5, false, 2000).urls[L4_4].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
