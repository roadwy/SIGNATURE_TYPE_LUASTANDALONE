local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p2
elseif not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.utf8p2
  elseif not L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[5]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.utf8p2
    elseif not L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[6]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[6]
        L0_0 = L0_0.utf8p2
      end
    end
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "Uri=([^;]+)"
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = isnull
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.CheckUrl
  L3_3 = L1_1
  L3_3 = L2_2(L3_3)
  if L2_2 == 1 and L3_3 == 1 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = {}
  L4_4.SIG_CONTEXT = "BM"
  L4_4.CONTENT_SOURCE = "SUSPBITSCREATE-E"
  if string.match(L1_1, "^https?://") then
    if SafeGetUrlReputation({L1_1}, L4_4, false, 3000).urls[L1_1] and SafeGetUrlReputation({L1_1}, L4_4, false, 3000).urls[L1_1].determination == 2 and SafeGetUrlReputation({L1_1}, L4_4, false, 3000).urls[L1_1].confidence >= 60 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
