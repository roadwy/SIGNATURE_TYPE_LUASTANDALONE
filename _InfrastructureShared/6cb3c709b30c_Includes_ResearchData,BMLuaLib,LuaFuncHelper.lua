local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = safeJsonDeserialize
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L1_1 = L0_0.gen_ransom_data
      if L1_1 then
        L1_1 = 0
        for L5_5, L6_6 in L2_2(L3_3) do
          L7_7 = L0_0.gen_ransom_data
          L7_7 = L7_7[L5_5]
          L7_7 = L7_7.Entropy
          if not (L7_7 < 7) then
            L7_7 = tonumber
            L7_7 = L7_7(L0_0.gen_ransom_data[L5_5].Filesize)
            if L7_7 == tonumber(L0_0.gen_ransom_data[L5_5].WriteSize) then
              L7_7 = tonumber
              L7_7 = L7_7(L0_0.gen_ransom_data[L5_5].Filesize)
              L7_7 = L7_7 % 16
            end
          elseif L7_7 ~= 0 then
            L7_7 = mp
            L7_7 = L7_7.CLEAN
            return L7_7
          end
          L7_7 = L0_0.gen_ransom_data
          L7_7 = L7_7[L5_5]
          L7_7 = L7_7.FilePath
          L7_7 = L7_7.match
          L7_7 = L7_7(L7_7, "%.[^%.]+$")
          if ExtensionToMagicMismatch(L7_7, L0_0.gen_ransom_data[L5_5].MagicByte) ~= nil and ExtensionToMagicMismatch(L7_7, L0_0.gen_ransom_data[L5_5].MagicByte) == false then
            return mp.CLEAN
          end
          L1_1 = L1_1 + 1
        end
        if L1_1 >= 5 then
          L5_5 = L2_2
          L6_6 = bm
          L6_6 = L6_6.RelatedStringBMReport
          L3_3(L4_4, L5_5, L6_6)
          L5_5 = L2_2
          L3_3(L4_4, L5_5)
          L3_3()
          return L3_3
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
