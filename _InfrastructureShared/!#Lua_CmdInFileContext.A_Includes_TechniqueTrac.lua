local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_SCANREASON
  L0_0 = L0_0(L1_1)
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L25_25 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "->"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L4_4 = 0
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L0_0 = L2_2
  if L0_0 ~= nil then
    L2_2 = #L0_0
  elseif L2_2 < 4 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = #L0_0
if L2_2 > 20 then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L0_0
  L4_4 = "([^\\%.]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L0_0
  L3_3 = L3_3(L4_4, L5_5, L6_6)
  L4_4 = "~1."
  L0_0 = L3_3 .. L4_4 .. L5_5
end
L2_2 = {}
L3_3 = {}
L4_4 = {}
L4_4["Lua:TopLevelFile.A!FileInStartup"] = L5_5
L4_4["Lua:TopLevelFile.A!FileInUserDesktop"] = L5_5
L4_4["Lua:TopLevelFile.A!FileInAppDataLocalTemp"] = L5_5
L4_4["Lua:TopLevelFile.A!FileInUserDownloads"] = L5_5
L3_3["Lua:TopLevelFileExt.A!lnk"] = L4_4
L2_2["PACKED_WITH:[CMDEmbedded]"] = L3_3
L3_3 = {}
L4_4 = {}
L4_4["Lua:FileInStartupFolder"] = L5_5
L4_4["Lua:FileInsideUserDesktopFolder"] = L5_5
L4_4["Lua:FileInsideAppDataLocalTempFolder"] = L5_5
L4_4["Lua:FileInsideUserDownloadFolder"] = L5_5
L3_3["Lua:CMDExt"] = L4_4
L4_4 = {}
L4_4["Lua:FileInStartupFolder"] = L5_5
L4_4["Lua:FileInsideUserDesktopFolder"] = L5_5
L4_4["Lua:FileInsideAppDataLocalTempFolder"] = L5_5
L4_4["Lua:FileInsideUserDownloadFolder"] = L5_5
L3_3["Lua:BATExt"] = L4_4
L2_2["RPF:TopLevelFile"] = L3_3
L3_3, L4_4 = nil, nil
for L8_8, L9_9 in L5_5(L6_6) do
  L11_11 = L8_8
  if L10_10 then
    L3_3 = L8_8
    L4_4 = L9_9
    break
  end
end
if L3_3 == nil or L4_4 == nil then
  return L5_5
end
for L11_11, L12_12 in L8_8(L9_9) do
  if L13_13 then
    for L16_16, L17_17 in L13_13(L14_14) do
      L19_19 = L16_16
      if L18_18 then
        L19_19 = L5_5
        L20_20 = string
        L20_20 = L20_20.format
        L25_25 = L20_20(L21_21, L22_22, L23_23)
        L18_18(L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L20_20(L21_21, L22_22, L23_23))
        L19_19 = L5_5
        L20_20 = string
        L20_20 = L20_20.format
        L25_25 = L20_20(L21_21, L22_22, L23_23)
        L18_18(L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L20_20(L21_21, L22_22, L23_23))
        break
      end
    end
  end
end
if L5_5 == nil or L6_6 == nil or L7_7 == nil then
  return L8_8
end
if L8_8 ~= nil then
elseif L9_9 <= 2 then
  return L9_9
end
L11_11 = "\000"
L12_12 = 1
if L9_9 == nil or L9_9 <= 2 then
  return L10_10
end
L11_11 = string
L11_11 = L11_11.sub
L12_12 = L8_8
L25_25 = L11_11(L12_12, L13_13, L14_14)
if L3_3 == "RPF:TopLevelFile" and (L6_6 == "Lua:CMDExt" or L6_6 == "Lua:BATExt") then
  L11_11 = string
  L11_11 = L11_11.find
  L12_12 = L10_10
  L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
  if L11_11 ~= nil then
    L12_12 = string
    L12_12 = L12_12.gsub
    L12_12 = L12_12(L13_13, L14_14, L15_15)
    if L13_13 >= 4 then
      return L14_14
    end
  end
end
L11_11 = mp
L11_11 = L11_11.getfilename
L12_12 = mp
L12_12 = L12_12.bitor
L25_25 = L12_12(L13_13, L14_14)
L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L12_12(L13_13, L14_14))
if L7_7 == "Lua:TopLevelFile.A!FileInStartup" or L7_7 == "Lua:FileInStartupFolder" then
  L12_12 = 3689015643
  if L6_6 == "Lua:TopLevelFileExt.A!lnk" then
    L12_12 = 4230219827
    L15_15(L16_16, L17_17)
    L15_15(L16_16, L17_17)
  elseif L6_6 == "Lua:CMDExt" then
    L12_12 = 4089264960
    L15_15(L16_16, L17_17)
  elseif L6_6 == "Lua:BATExt" then
    L12_12 = 3568621407
    L15_15(L16_16, L17_17)
  end
  for L19_19, L20_20 in L16_16(L17_17) do
    if L21_21 > 3 then
      L24_24 = 3
      if L21_21 == "..\\" then
        L20_20 = L21_21
      end
    end
    L20_20 = L21_21
    if L21_21 == false then
      if L21_21 then
        if L21_21 == false then
          L24_24 = false
          if L21_21 == false then
            L21_21(L22_22, L23_23)
            L21_21(L22_22, L23_23)
            for L24_24, L25_25 in L21_21(L22_22) do
              mp.set_mpattribute(L25_25)
            end
            L21_21(L22_22, L23_23)
          end
        end
      end
    end
  end
end
if L7_7 == "Lua:TopLevelFile.A!FileInStartup" or L7_7 == "Lua:FileInStartupFolder" then
  L12_12 = string
  L12_12 = L12_12.sub
  L12_12 = L12_12(L13_13, L14_14, L15_15)
  if L12_12 == "..\\" then
    L12_12 = expandRelativePath
    L12_12 = L12_12(L13_13, L14_14)
    if L10_10 == nil then
      L12_12 = mp
      L12_12 = L12_12.CLEAN
      return L12_12
    end
  end
end
L12_12 = getCustomStringHash
L12_12 = L12_12(L13_13)
if L12_12 == nil then
  return L13_13
end
if L14_14 ~= nil then
  if L15_15 > 3 then
    L19_19 = true
    if L15_15 ~= nil and L15_15 > 4 then
      L19_19 = L15_15 - 1
    end
    L19_19 = L14_14
    L19_19 = L16_16
    L17_17(L18_18, L19_19)
  end
end
for L18_18, L19_19 in L15_15(L16_16) do
  L20_20 = MpCommon
  L20_20 = L20_20.QueryPersistContextNoPath
  L20_20 = L20_20(L21_21, L22_22)
  if not L20_20 then
    L20_20 = MpCommon
    L20_20 = L20_20.AppendPersistContextNoPath
    L20_20(L21_21, L22_22, L23_23)
  end
end
return L15_15
