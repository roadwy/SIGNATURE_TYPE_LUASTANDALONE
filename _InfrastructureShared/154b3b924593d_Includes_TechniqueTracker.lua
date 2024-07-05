local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.ContextualExpandEnvironmentVariables
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L3_3 = L3_3.utf8p2
  L9_9 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1(A0_10)
  local L1_11, L2_12, L3_13, L4_14, L5_15
  L1_11 = {}
  for L5_15 in L2_12(L3_13, L4_14) do
    table.insert(L1_11, L5_15)
  end
  for _FORV_6_ = 1, #L1_11 do
    if L1_11[_FORV_6_] == "/tr" then
      break
    end
  end
  return L2_12
end
L2_2 = L1_1
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = checkFileLastWriteTime
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.IsKnownFriendlyFile
      L4_4 = L2_2
      L3_3 = L3_3(L4_4, L5_5, L6_6)
      if not L3_3 then
        L3_3 = {
          L4_4,
          L5_5,
          L6_6,
          L7_7,
          L8_8,
          L9_9,
          "\\device\\cdrom.+",
          "\\device\\mup\\.+"
        }
        L4_4 = "\\users\\public\\.+"
        L8_8 = "\\users\\.+\\appdata\\local\\temp\\rar.+"
        L9_9 = "\\users\\.+\\appdata\\local\\temp\\bnz.+"
        L4_4 = {L5_5}
        for L8_8, L9_9 in L5_5(L6_6) do
          if L2_2:find(L9_9) and IsProcNameInParentProcessTree("BM", L4_4) then
            mp.ReportLowfi(L2_2, 1883884361)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
