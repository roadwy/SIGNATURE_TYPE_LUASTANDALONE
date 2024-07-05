local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L0_0 and L1_1 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L2_2 = L2_2.utf8p2
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[4]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[4]
            L2_2 = L2_2.utf8p2
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[5]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[5]
                L2_2 = L2_2.utf8p2
              end
            end
          end
        end
      end
    end
  end
  if L2_2 then
    L3_3 = string
    L3_3 = L3_3.match
    L4_4 = L2_2
    L5_5 = "Uri=([^;]+)"
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = isnull
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = {}
    L4_4.SIG_CONTEXT = "BM"
    L4_4.CONTENT_SOURCE = "ITW_WRITEMEMORY"
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L3_3
    L7_7 = "^https?://"
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CheckUrl
      L6_6 = L3_3
      L6_6 = L5_5(L6_6)
      if L5_5 == 1 and L6_6 == 1 then
        L7_7 = mp
        L7_7 = L7_7.CLEAN
        return L7_7
      end
      L7_7 = SafeGetUrlReputation
      L8_8 = {L9_9}
      L9_9 = L3_3
      L9_9 = L4_4
      L10_10 = false
      L11_11 = 3000
      L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
      L8_8 = L7_7.urls
      L8_8 = L8_8[L3_3]
      if L8_8 then
        L8_8 = L7_7.urls
        L8_8 = L8_8[L3_3]
        L8_8 = L8_8.determination
        if L8_8 == 2 then
          L8_8 = L7_7.urls
          L8_8 = L8_8[L3_3]
          L8_8 = L8_8.confidence
          if L8_8 >= 60 then
            L8_8 = pcall
            L9_9 = string
            L9_9 = L9_9.match
            L10_10 = L0_0
            L11_11 = "vmbaseaddress:(%d+)"
            L9_9 = L8_8(L9_9, L10_10, L11_11)
            if L8_8 then
              L10_10 = isnull
              L11_11 = L9_9
              L10_10 = L10_10(L11_11)
            elseif L10_10 then
              L10_10 = mp
              L10_10 = L10_10.CLEAN
              return L10_10
            end
            L10_10 = pcall
            L11_11 = string
            L11_11 = L11_11.match
            L11_11 = L10_10(L11_11, L0_0, "vmbytescopied:(%d+)")
            if not L10_10 or isnull(L11_11) then
              return mp.CLEAN
            end
            bm.add_related_string("SHELLCODE BYTES: ", L11_11, bm.RelatedStringBMReport)
            bm.add_related_string("MALCIOUS PATH: ", L1_1, bm.RelatedStringBMReport)
            bm.add_related_string("SHELLCODE ADDRESS: ", L9_9, bm.RelatedStringBMReport)
            bm.add_related_string("MALICIOUS URL: ", L3_3, bm.RelatedStringBMReport)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
