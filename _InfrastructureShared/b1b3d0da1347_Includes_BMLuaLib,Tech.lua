local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = GetRealPidForScenario
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L2_2 = L0_0.command_line
L3_3 = GetTacticsTableForPid
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = GetTechniquesTableForPid
L5_5 = L1_1
L4_4 = L4_4(L5_5)
if L3_3 ~= nil and L4_4 ~= nil then
  L5_5 = type
  L5_5 = L5_5(L6_6)
  if L5_5 == "table" then
    L5_5 = type
    L5_5 = L5_5(L6_6)
  end
elseif L5_5 ~= "table" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L2_2 ~= nil and L2_2 ~= "" then
  L5_5 = string
  L5_5 = L5_5.find
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if not L5_5 then
    L5_5 = string
    L5_5 = L5_5.find
    L9_9 = true
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if not L5_5 then
      L5_5 = string
      L5_5 = L5_5.find
      L9_9 = true
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
      if not L5_5 then
        L5_5 = string
        L5_5 = L5_5.find
        L9_9 = true
        L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
        if not L5_5 then
          L5_5 = string
          L5_5 = L5_5.find
          L9_9 = true
          L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
        end
      end
    end
  elseif L5_5 == 1 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = {}
for L9_9, L10_10 in L6_6(L7_7) do
  if L9_9 ~= "DefenseEvasion_Masquerading" then
    L11_11 = L9_9.match
    L11_11 = L11_11(L9_9, "([^_]+)_")
    if L11_11 then
      L11_11 = string.lower(L11_11)
      if L5_5[L11_11] == nil then
        L5_5[L11_11] = tonumber(L10_10)
      else
        L5_5[L11_11] = L5_5[L11_11] + tonumber(L10_10)
      end
    end
  end
end
getTacticCount = L6_6
L6_6(L7_7, L8_8)
L6_6()
if L6_6 > 2 then
  return L6_6
end
return L6_6
