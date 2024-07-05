local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
for L6_6 = 1, L4_4.SIGATTR_LOG_SZ do
  if L7_7 then
    if L7_7 == 16401 then
      if L7_7 ~= nil then
        L0_0 = L7_7
        L1_1 = L7_7
        L2_2 = L7_7.ppid
        break
      end
    end
  end
end
if not L2_2 then
  return L3_3
end
if L0_0 == nil or L1_1 == nil then
  return L3_3
end
if L3_3 >= 1 then
  if L3_3 == "%" then
    return L3_3
  end
end
if L3_3 == true then
  return L3_3
end
if L4_4 == nil then
  return L5_5
end
if L5_5 == nil then
  return L6_6
end
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = string
  L11_11 = L11_11.sub
  L12_12 = L10_10
  L11_11 = L11_11(L12_12, L13_13)
  if L11_11 ~= L4_4 then
    L11_11 = sysio
    L11_11 = L11_11.IsFileExists
    L12_12 = L10_10
    L11_11 = L11_11(L12_12)
    if L11_11 then
      L11_11 = MpCommon
      L11_11 = L11_11.GetPersistContextCount
      L12_12 = L10_10
      L11_11 = L11_11(L12_12)
      if L11_11 > 0 and L11_11 <= 100 then
        L12_12 = MpCommon
        L12_12 = L12_12.GetPersistContext
        L12_12 = L12_12(L13_13)
        for L16_16, L17_17 in L13_13(L14_14) do
          L18_18 = #L17_17
          if L18_18 >= 4 then
            L18_18 = string
            L18_18 = L18_18.match
            L19_19 = L17_17
            L18_18 = L18_18(L19_19, "^[tT][0-9][0-9][0-9][0-9]")
            if L18_18 then
              L18_18 = string
              L18_18 = L18_18.match
              L19_19 = L17_17
              L19_19 = L18_18(L19_19, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
              TrackPidAndTechniqueBM(L2_2, L18_18, L19_19)
            end
          end
        end
      end
    end
  end
end
if L3_3 == true then
  L9_9 = 0
  L6_6(L7_7, L8_8, L9_9)
  return L6_6
end
return L6_6
