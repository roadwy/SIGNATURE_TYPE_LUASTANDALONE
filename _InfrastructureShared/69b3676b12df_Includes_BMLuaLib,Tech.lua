local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    if L6_6 ~= nil and L6_6 ~= "" then
      L7_7 = StringEndsWith
      L8_8 = L6_6
      L7_7 = L7_7(L8_8, ".js")
      if L7_7 then
        L7_7 = mp
        L7_7 = L7_7.ContextualExpandEnvironmentVariables
        L8_8 = L6_6
        L7_7 = L7_7(L8_8)
        L6_6 = L7_7
        L7_7 = sysio
        L7_7 = L7_7.IsFileExists
        L8_8 = L6_6
        L7_7 = L7_7(L8_8)
        if L7_7 then
          L7_7 = mp
          L7_7 = L7_7.GetMotwReferrerUrlForFile
          L8_8 = L6_6
          L8_8 = L7_7(L8_8)
          if not L7_7 then
            return mp.CLEAN
          end
          if not L8_8 or StringStartsWith(L8_8, "http") or StringStartsWith(L8_8, "www") then
            return mp.CLEAN
          end
          if sysio.IsFileExists(L8_8) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
