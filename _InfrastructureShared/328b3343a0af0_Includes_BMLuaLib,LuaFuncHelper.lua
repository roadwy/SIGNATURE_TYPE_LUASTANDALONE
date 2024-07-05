local L0_0, L1_1, L2_2, L3_3
L0_0 = false
L1_1 = this_sigattrlog
L1_1 = L1_1[15]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[15]
  L1_1 = L1_1.utf8p2
elseif not L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[16]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[16]
    L1_1 = L1_1.utf8p2
  elseif not L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[17]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[17]
      L1_1 = L1_1.utf8p2
    elseif not L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[18]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[18]
        L1_1 = L1_1.utf8p2
      end
    end
  end
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "Uri=([^;]+)")
if not L2_2 then
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L1_1, "DestIp=([^;]*);")
  if not L3_3 or not isPublicIP(L3_3) then
    return mp.CLEAN
  end
  L0_0 = true
end
L3_3 = {}
L3_3.SIG_CONTEXT = "DLL_LOAD_1"
L3_3.CONTENT_SOURCE = "BM"
L3_3.TAG = "INTERFLOW"
if not L0_0 and mp.CheckUrl(L2_2) == 1 and mp.CheckUrl(L2_2) == 1 then
  return mp.CLEAN
end
if SafeGetUrlReputation({L2_2}, L3_3, false, 2000).urls[L2_2] and SafeGetUrlReputation({L2_2}, L3_3, false, 2000).urls[L2_2].determination == 2 and SafeGetUrlReputation({L2_2}, L3_3, false, 2000).urls[L2_2].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
