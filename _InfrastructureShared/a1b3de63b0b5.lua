local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.wp2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[1]
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.wp2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[2]
    end
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L1_1 = L1_1(L2_2)
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = mp
  L7_7 = L7_7.ContextualExpandEnvironmentVariables
  L8_8 = L6_6
  L7_7 = L7_7(L8_8)
  L7_7 = string
  L7_7 = L7_7.lower
  L8_8 = string
  L8_8 = L8_8.sub
  L8_8 = L8_8(L6_6, -14)
  L7_7 = L7_7(L8_8, L8_8(L6_6, -14))
  if L7_7 == "\\litetouch.wsf" then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = sysio
  L8_8 = L8_8.IsFileExists
  L8_8 = L8_8(L6_6)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.IsKnownFriendlyFile
    L8_8 = L8_8(L6_6, true, false)
    if not L8_8 then
      L8_8 = bm
      L8_8 = L8_8.add_related_file
      L8_8(L6_6)
    end
  end
end
if L3_3 then
elseif L3_3 then
elseif L3_3 then
else
end
if not L2_2 then
  return L3_3
end
for L7_7, L8_8 in L4_4(L5_5) do
  L8_8 = string.lower(mp.ContextualExpandEnvironmentVariables(L8_8))
  if not string.find(L8_8, "\\windows\\system32\\", 1, true) and (string.find(L8_8, "\\appdata\\", 1, true) or string.find(L8_8, "\\temp\\", 1, true) or string.find(L8_8, "\\public\\", 1, true)) and sysio.IsFileExists(L8_8) and not mp.IsKnownFriendlyFile(L8_8, true, false) then
    bm.add_related_file(L8_8)
  end
end
if L3_3 then
  return L4_4
end
return L4_4
