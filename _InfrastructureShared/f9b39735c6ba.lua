local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "-ap \""
  L4_4 = 1
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1
    L1_1 = L1_1.match
    L3_3 = "-ap \"([^\"]+)\""
    L1_1 = L1_1(L2_2, L3_3)
    L0_0 = L1_1
  end
else
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  if L1_1 ~= nil then
    L2_2 = L1_1.command_line
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1.command_line
      L2_2 = L2_2(L3_3)
      L3_3 = L2_2
      L2_2 = L2_2.match
      L4_4 = "-ap \"([^\"]+)\""
      L2_2 = L2_2(L3_3, L4_4)
      L0_0 = L2_2
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L2_2 = "%windir%\\system32\\inetsrv\\config\\applicationHost.config"
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetIisInstallPaths
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = "["
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = L9_9.PoolName
  if L10_10 ~= nil then
    L10_10 = L9_9.PoolName
    if L10_10 ~= "" then
      L10_10 = L9_9.Path
      if L10_10 ~= nil then
        L10_10 = L9_9.Path
        if L10_10 ~= "" then
          L10_10 = string
          L10_10 = L10_10.lower
          L10_10 = L10_10(L11_11)
          if L10_10 == L0_0 then
            L10_10 = L4_4
            L4_4 = L10_10 .. L11_11 .. L12_12
            L10_10 = mp
            L10_10 = L10_10.TriggerScanResource
            L10_10(L11_11, L12_12)
            L10_10 = sysio
            L10_10 = L10_10.FindFiles
            L10_10 = L10_10(L11_11, L12_12, L13_13)
            if L10_10 then
              L3_3 = true
              for L14_14, L15_15 in L11_11(L12_12) do
                mp.ReportLowfi(L15_15, 2037457591)
              end
            end
          end
        end
      end
    end
  end
end
if L3_3 then
  L4_4 = L5_5 .. L6_6
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
  return L5_5
end
return L5_5
