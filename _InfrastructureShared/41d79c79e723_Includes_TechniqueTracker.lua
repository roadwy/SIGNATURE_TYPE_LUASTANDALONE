local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
function L0_0(A0_11)
  local L1_12, L2_13, L3_14, L4_15, L5_16
  L1_12 = {}
  for L5_16 in L2_13(L3_14, L4_15) do
    table.insert(L1_12, L5_16)
  end
  for _FORV_6_ = 1, #L1_12 do
    if L1_12[_FORV_6_] == "/tr" then
      break
    end
  end
  return L2_13
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetProcessElevationAndIntegrityLevel
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = L2_2.IntegrityLevel
  L4_4 = MpCommon
  L4_4 = L4_4.SECURITY_MANDATORY_SYSTEM_RID
  if L3_3 >= L4_4 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L5_5 = L1_1
L10_10 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4(L5_5))
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L0_0
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  L5_5 = sysio
  L5_5 = L5_5.IsFileExists
  L5_5 = L5_5(L6_6)
  if L5_5 then
    L5_5 = checkFileLastWriteTime
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.IsKnownFriendlyFile
      L5_5 = L5_5(L6_6, L7_7, L8_8)
      if not L5_5 then
        L5_5 = {
          L6_6,
          L7_7,
          L8_8,
          L9_9,
          L10_10,
          "\\users\\.+\\appdata\\local\\temp\\bnz.+",
          "\\device\\cdrom.+",
          "\\device\\mup\\.+"
        }
        L9_9 = "\\users\\.+\\appdata\\local\\temp\\7z.+"
        L10_10 = "\\users\\.+\\appdata\\local\\temp\\rar.+"
        for L9_9, L10_10 in L6_6(L7_7) do
          if L4_4.find(L10_10) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
