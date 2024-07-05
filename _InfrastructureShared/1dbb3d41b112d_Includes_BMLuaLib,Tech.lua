local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L3_3 = this_sigattrlog
L3_3 = L3_3[6]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[6]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L0_0 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[7]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[7]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[7]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[5]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
  end
end
if L0_0 and L1_1 and L2_2 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[2]
        L3_3 = L3_3.utf8p2
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[3]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[3]
            L3_3 = L3_3.utf8p2
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[4]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[4]
                L3_3 = L3_3.utf8p2
              end
            end
          end
        end
      end
    end
  end
  if L3_3 then
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L3_3
    L6_6 = "Uri=([^;]+)"
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = isnull
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = {}
    L5_5.SIG_CONTEXT = "BM"
    L5_5.CONTENT_SOURCE = "ALLOCVM_TAINT"
    L6_6 = string
    L6_6 = L6_6.match
    L7_7 = L4_4
    L8_8 = "^https?://"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.CheckUrl
      L7_7 = L4_4
      L7_7 = L6_6(L7_7)
      if L6_6 == 1 and L7_7 == 1 then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = SafeGetUrlReputation
      L9_9 = {L10_10}
      L10_10 = L4_4
      L10_10 = L5_5
      L8_8 = L8_8(L9_9, L10_10, false, 3000)
      L9_9 = L8_8.urls
      L9_9 = L9_9[L4_4]
      if L9_9 then
        L9_9 = L8_8.urls
        L9_9 = L9_9[L4_4]
        L9_9 = L9_9.determination
        if L9_9 == 2 then
          L9_9 = L8_8.urls
          L9_9 = L9_9[L4_4]
          L9_9 = L9_9.confidence
          if L9_9 >= 60 then
            L9_9 = pcall
            L10_10 = string
            L10_10 = L10_10.match
            L10_10 = L9_9(L10_10, L0_0, "regionsize:(%d+)")
            if not L9_9 or isnull(L10_10) then
              return mp.CLEAN
            end
            bm.add_related_string("SHELLCODE BYTES: ", L10_10, bm.RelatedStringBMReport)
            bm.add_related_string("MALCIOUS PATH: ", L1_1, bm.RelatedStringBMReport)
            bm.add_related_string("SHELLCODE ADDRESS: ", L2_2, bm.RelatedStringBMReport)
            bm.add_related_string("MALICIOUS URL: ", L4_4, bm.RelatedStringBMReport)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
