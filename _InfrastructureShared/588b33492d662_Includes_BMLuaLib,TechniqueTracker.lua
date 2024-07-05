local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = {}
L4_4 = {}
L5_5 = 0
for L9_9 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L10_10 = L10_10.attribute
  if L10_10 == 16389 then
    L11_11 = sigattr_tail
    L11_11 = L11_11[L9_9]
    L11_11 = L11_11.utf8p2
    if L11_11 == "ATTR_c09458eb" then
      L11_11 = sigattr_tail
      L11_11 = L11_11[L9_9]
      L11_11 = L11_11.utf8p1
      L12_12 = L11_11
      L11_11 = L11_11.lower
      L11_11 = L11_11(L12_12)
      L12_12 = mp
      L12_12 = L12_12.crc32
      L13_13 = 0
      L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
      L4_4[L12_12] = L9_9
    end
  end
end
for L9_9 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L10_10 = L10_10.attribute
  if L10_10 == 16385 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L9_9]
    L10_10 = L10_10.utf8p2
    if L10_10 ~= 0 then
      L10_10 = sigattr_tail
      L10_10 = L10_10[L9_9]
      L10_10 = L10_10.utf8p2
      if L10_10 ~= "" then
        L10_10 = sigattr_tail
        L10_10 = L10_10[L9_9]
        L10_10 = L10_10.utf8p1
        L11_11 = L10_10
        L10_10 = L10_10.lower
        L10_10 = L10_10(L11_11)
        L11_11 = sigattr_tail
        L11_11 = L11_11[L9_9]
        L11_11 = L11_11.utf8p2
        L12_12 = L11_11
        L11_11 = L11_11.lower
        L11_11 = L11_11(L12_12)
        L12_12 = {}
        L13_13 = mp
        L13_13 = L13_13.crc32
        L17_17 = #L10_10
        L13_13 = L13_13(L14_14, L15_15, L16_16, L17_17)
        if L14_14 == nil then
          if L14_14 ~= nil then
            L1_1[L13_13] = L9_9
            for L17_17, L18_18 in L14_14(L15_15, L16_16) do
              L12_12[L17_17] = L18_18
            end
            L17_17 = L12_12.totalsizewrite
            L17_17 = tonumber
            L18_18 = L12_12.numwrites
            L17_17 = L17_17(L18_18)
            if L14_14 ~= nil and L15_15 ~= nil and L16_16 ~= nil and L17_17 ~= nil then
              L18_18 = sysio
              L18_18 = L18_18.GetFileSize
              L18_18 = L18_18(L10_10)
              if L16_16 == L18_18 then
                L18_18 = string
                L18_18 = L18_18.find
                L18_18 = L18_18(L10_10, "\\[^\\]*$")
                L18_18 = L18_18 or 0
                if string.find(L10_10, ".", L18_18, true) ~= nil and (L2_2[string.sub(L10_10, L18_18 + 1, string.find(L10_10, ".", L18_18, true) - 1)] == nil or L3_3[L10_10:match("%.[^%.]+$")] == nil) then
                  L2_2[string.sub(L10_10, L18_18 + 1, string.find(L10_10, ".", L18_18, true) - 1)] = L9_9
                  L3_3[L10_10:match("%.[^%.]+$")] = L9_9
                  L5_5 = L5_5 + 1
                  if L5_5 >= 5 then
                    reportTimingData()
                    return mp.INFECTED
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return L6_6
