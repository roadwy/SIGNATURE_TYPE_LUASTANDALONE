local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L1_1 = L1_1.utf8p2
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[4]
            L1_1 = L1_1.utf8p2
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[5]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[5]
                L1_1 = L1_1.utf8p2
              end
            end
          end
        end
      end
    end
  end
  if L1_1 then
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, "Uri=([^;]+)")
    L3_3 = isnull
    L3_3 = L3_3(L2_2)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = {}
    L3_3.SIG_CONTEXT = "BM"
    L3_3.CONTENT_SOURCE = "QUE_SET_RE"
    if string.match(L2_2, "^https?://") then
      if mp.CheckUrl(L2_2) == 1 and mp.CheckUrl(L2_2) == 1 then
        return mp.CLEAN
      end
      if SafeGetUrlReputation({L2_2}, L3_3, false, 3000).urls[L2_2] and SafeGetUrlReputation({L2_2}, L3_3, false, 3000).urls[L2_2].determination == 2 and SafeGetUrlReputation({L2_2}, L3_3, false, 3000).urls[L2_2].confidence >= 60 then
        bm.add_related_string("MALCIOUS PATH: ", L0_0, bm.RelatedStringBMReport)
        bm.add_related_string("MALICIOUS URL: ", L2_2, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
