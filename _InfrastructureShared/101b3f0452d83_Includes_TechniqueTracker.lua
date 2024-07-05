local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextCountNoPath
L0_0 = L0_0(L1_1)
if L0_0 > 0 then
  L0_0 = MpCommon
  L0_0 = L0_0.GetPersistContextNoPath
  L0_0 = L0_0(L1_1)
  if L0_0 then
    for L4_4, L5_5 in L1_1(L2_2) do
      L6_6 = string
      L6_6 = L6_6.match
      L6_6 = L6_6(L7_7, L8_8)
      for L10_10 = 1, L8_8.SIGATTR_LOG_SZ do
        L11_11 = sigattr_head
        L11_11 = L11_11[L10_10]
        L11_11 = L11_11.matched
        if L11_11 then
          L11_11 = sigattr_head
          L11_11 = L11_11[L10_10]
          L11_11 = L11_11.attribute
          if L11_11 == 16400 then
            L11_11 = string
            L11_11 = L11_11.lower
            L12_12 = sigattr_head
            L12_12 = L12_12[L10_10]
            L12_12 = L12_12.utf8p2
            L11_11 = L11_11(L12_12)
            L12_12 = string
            L12_12 = L12_12.gsub
            L12_12 = L12_12(L11_11, "\"", "")
            L11_11 = L12_12
            L12_12 = string
            L12_12 = L12_12.len
            L12_12 = L12_12(L11_11)
            if L12_12 > 4 then
              L12_12 = string
              L12_12 = L12_12.find
              L12_12 = L12_12(L11_11, string.lower(L5_5), 1, true)
              if L12_12 then
                L12_12 = TrackPidAndTechniqueBM
                L12_12("BM", "T1548.002", "uac_bypass_trg")
                L12_12 = mp
                L12_12 = L12_12.INFECTED
                return L12_12
              end
            end
            L12_12 = string
            L12_12 = L12_12.match
            L12_12 = L12_12(string.lower(sigattr_head[L10_10].utf8p2), " (.+)$")
            if L12_12 and L6_6 and string.len(L12_12) > 4 and L12_12 == L6_6 then
              TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_trg")
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
