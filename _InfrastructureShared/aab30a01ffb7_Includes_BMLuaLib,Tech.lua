local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = 0
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = {}
    for L6_6 = 1, L0_0 do
      if L7_7 == 16387 then
        if L7_7 then
          L2_2[L7_7] = L6_6
          L1_1 = L1_1 + 1
        end
      end
    end
    if L1_1 >= 5 then
      if L4_4 then
        for L9_9, L10_10 in L6_6(L7_7) do
          for L14_14, L15_15 in L11_11(L12_12) do
            L16_16 = #L10_10
            if L16_16 > L17_17 then
              L16_16 = L10_10.find
              L16_16 = L16_16(L17_17, L14_14, 1, true)
              if L16_16 == 1 then
                L16_16 = L10_10.byte
                L16_16 = L16_16(L17_17, #L14_14 + 1)
                if L16_16 ~= 58 then
                  L16_16 = string
                  L16_16 = L16_16.sub
                  L16_16 = L16_16(L17_17, #L14_14 + 1)
                  if L17_17 == nil then
                    if L17_17 ~= nil then
                      L17_17(L3_3[L16_16], L15_15)
                    else
                      L3_3[L16_16] = L17_17
                    end
                    if L17_17 >= 3 then
                      for _FORV_20_, _FORV_21_ in L17_17(L3_3[L16_16]) do
                        table.insert(L4_4, sigattr_tail[_FORV_21_].utf8p1)
                      end
                      L17_17.appended_ext = L16_16
                      L17_17.encrypted_file_meta = L4_4
                      bm.trigger_sig("GenericRansomware:Type4.2", safeJsonSerialize(L17_17))
                      return mp.INFECTED
                    end
                  end
                  break
                end
              end
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
