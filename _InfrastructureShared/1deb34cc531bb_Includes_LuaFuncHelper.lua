local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.utf8p2
elseif not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[8]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[8]
    L0_0 = L0_0.utf8p2
  elseif not L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[9]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[9]
      L0_0 = L0_0.utf8p2
    elseif not L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[10]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[10]
        L0_0 = L0_0.utf8p2
      end
    end
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "Uri=([^;]+)")
  if not L1_1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = {}
  L2_2.SIG_CONTEXT = "BM"
  L2_2.CONTENT_SOURCE = "SUSPCOLORPL-C"
  if string.match(L1_1, "^https?://") then
    if SafeGetUrlReputation({L1_1}, L2_2, false, 3000).urls[L1_1] and SafeGetUrlReputation({L1_1}, L2_2, false, 3000).urls[L1_1].determination == 2 and SafeGetUrlReputation({L1_1}, L2_2, false, 3000).urls[L1_1].confidence >= 60 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
