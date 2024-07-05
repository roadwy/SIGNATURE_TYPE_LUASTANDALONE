local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L4_4 = this_sigattrlog
L4_4 = L4_4[8]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = this_sigattrlog
  L5_5 = L5_5[8]
  L5_5 = L5_5.utf8p1
  L4_4 = L4_4(L5_5)
  L0_0 = L4_4
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[9]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[9]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L1_1 = L4_4
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[10]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[10]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[10]
    L5_5 = L5_5.utf8p2
    L4_4 = L4_4(L5_5)
    L2_2 = L4_4
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
  end
end
if L2_2 and L3_3 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L4_4 = L4_4.matched
      if L4_4 then
        L4_4 = this_sigattrlog
        L4_4 = L4_4[3]
        L4_4 = L4_4.utf8p2
        if L4_4 then
          L4_4 = this_sigattrlog
          L4_4 = L4_4[4]
          L4_4 = L4_4.matched
          if L4_4 then
            L4_4 = this_sigattrlog
            L4_4 = L4_4[4]
            L4_4 = L4_4.utf8p2
            if L4_4 then
              L4_4 = this_sigattrlog
              L4_4 = L4_4[5]
              L4_4 = L4_4.matched
              if L4_4 then
                L4_4 = this_sigattrlog
                L4_4 = L4_4[5]
                L4_4 = L4_4.utf8p2
              end
            end
          end
        end
      end
    end
  end
  if L4_4 then
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L4_4
    L7_7 = "Uri=([^;]+)"
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = isnull
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = {}
    L6_6.SIG_CONTEXT = "BM"
    L6_6.CONTENT_SOURCE = "IRL_MAPVIEW"
    L7_7 = string
    L7_7 = L7_7.match
    L8_8 = L5_5
    L9_9 = "^https?://"
    L7_7 = L7_7(L8_8, L9_9)
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.CheckUrl
      L8_8 = L5_5
      L8_8 = L7_7(L8_8)
      if L7_7 == 1 and L8_8 == 1 then
        L9_9 = mp
        L9_9 = L9_9.CLEAN
        return L9_9
      end
      L9_9 = SafeGetUrlReputation
      L10_10 = {L11_11}
      L11_11 = L5_5
      L11_11 = L6_6
      L12_12 = false
      L13_13 = 3000
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      L10_10 = L9_9.urls
      L10_10 = L10_10[L5_5]
      if L10_10 then
        L10_10 = L9_9.urls
        L10_10 = L10_10[L5_5]
        L10_10 = L10_10.determination
        if L10_10 == 2 then
          L10_10 = L9_9.urls
          L10_10 = L10_10[L5_5]
          L10_10 = L10_10.confidence
          if L10_10 >= 60 then
            L10_10 = pcall
            L11_11 = string
            L11_11 = L11_11.match
            L12_12 = L2_2
            L13_13 = "vmbaseaddress:(%d+)"
            L11_11 = L10_10(L11_11, L12_12, L13_13)
            if L10_10 then
              L12_12 = isnull
              L13_13 = L11_11
              L12_12 = L12_12(L13_13)
            elseif L12_12 then
              L12_12 = mp
              L12_12 = L12_12.CLEAN
              return L12_12
            end
            L12_12 = pcall
            L13_13 = string
            L13_13 = L13_13.match
            L14_14 = L2_2
            L15_15 = "vmregionsize:(%d+)"
            L13_13 = L12_12(L13_13, L14_14, L15_15)
            if L12_12 then
              L14_14 = isnull
              L15_15 = L13_13
              L14_14 = L14_14(L15_15)
            elseif L14_14 then
              L14_14 = mp
              L14_14 = L14_14.CLEAN
              return L14_14
            end
            L14_14, L15_15 = nil, nil
            L16_16 = versioning
            L16_16 = L16_16.GetProcessorArchitecture
            L16_16 = L16_16()
            if L16_16 == 0 then
              L14_14 = L1_1
              L15_15 = "32"
            elseif L16_16 == 9 then
              L17_17 = this_sigattrlog
              L17_17 = L17_17[8]
              L17_17 = L17_17.matched
              if L17_17 then
                L14_14 = L0_0
                L15_15 = "32"
              else
                L17_17 = this_sigattrlog
                L17_17 = L17_17[9]
                L17_17 = L17_17.matched
                if L17_17 then
                  L14_14 = L1_1
                  L15_15 = "64"
                end
              end
            end
            if L14_14 then
              L17_17 = pcall
              L18_18 = sysio
              L18_18 = L18_18.GetPEVersionInfo
              L19_19 = L14_14
              L18_18 = L17_17(L18_18, L19_19)
              if L17_17 then
                L19_19 = isnull
                L20_20 = L18_18
                L19_19 = L19_19(L20_20)
              elseif L19_19 then
                L19_19 = mp
                L19_19 = L19_19.CLEAN
                return L19_19
              end
              L19_19 = L18_18.OriginalFilename
              L20_20 = L18_18.ProductVersion
              L21_21 = L18_18.FileVersion
              if isnull(L19_19) or isnull(L20_20) or isnull(L21_21) then
                return mp.CLEAN
              end
              bm.add_related_string("PRODUCT VERSION: ", L20_20, bm.RelatedStringBMReport)
              bm.add_related_string("FILE VERSION: ", L21_21, bm.RelatedStringBMReport)
              bm.add_related_string("ARCH: ", L15_15, bm.RelatedStringBMReport)
            end
            L17_17 = bm
            L17_17 = L17_17.add_related_string
            L18_18 = "SHELLCODE BYTES: "
            L19_19 = L13_13
            L20_20 = bm
            L20_20 = L20_20.RelatedStringBMReport
            L17_17(L18_18, L19_19, L20_20)
            L17_17 = bm
            L17_17 = L17_17.add_related_string
            L18_18 = "MALCIOUS PATH: "
            L19_19 = L3_3
            L20_20 = bm
            L20_20 = L20_20.RelatedStringBMReport
            L17_17(L18_18, L19_19, L20_20)
            L17_17 = bm
            L17_17 = L17_17.add_related_string
            L18_18 = "SHELLCODE ADDRESS: "
            L19_19 = L11_11
            L20_20 = bm
            L20_20 = L20_20.RelatedStringBMReport
            L17_17(L18_18, L19_19, L20_20)
            L17_17 = bm
            L17_17 = L17_17.add_related_string
            L18_18 = "MALICIOUS URL: "
            L19_19 = L5_5
            L20_20 = bm
            L20_20 = L20_20.RelatedStringBMReport
            L17_17(L18_18, L19_19, L20_20)
            L17_17 = mp
            L17_17 = L17_17.INFECTED
            return L17_17
          end
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
