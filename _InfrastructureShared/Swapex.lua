local L0_0, L1_1, L2_2, L3_3
function L0_0()
  local L0_4
  L0_4 = MpCommon
  L0_4 = L0_4.ExpandEnvironmentVariables
  L0_4 = L0_4("%SystemRoot%")
  if not L0_4 then
    return nil
  end
  return L0_4 .. "\\System32\\drivers\\"
end
getSystemDriverPath = L0_0
function L0_0(A0_5)
  local L1_6, L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13
  for L6_11, L7_12 in L3_8(L4_9) do
    L8_13 = L7_12.Schema
    if L8_13 == "file" then
      L8_13 = string
      L8_13 = L8_13.lower
      L8_13 = L8_13(L7_12.Path)
      if getSystemDriverPath() and string.find(L8_13, getSystemDriverPath():lower(), 1, true) and string.match(L8_13, "\\([^\\]+)%.sys") then
        L2_7 = string.match(L8_13, "\\([^\\]+)%.sys")
        L1_6 = L8_13
        break
      end
    end
  end
  return L3_8, L4_9
end
getDriverName = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L1_1 = L0_0.Active
if L1_1 then
  L1_1 = getDriverName
  L2_2 = L0_0
  L2_2 = L1_1(L2_2)
  if L1_1 then
    L3_3 = Remediation
    L3_3 = L3_3.FfrDriverDeleteByDriverName
    L3_3(L1_1)
    L3_3 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\"
    L3_3 = L3_3 .. L1_1
    Remediation.BtrDeleteRegKey(L3_3)
  end
  if L2_2 then
    L3_3 = Remediation
    L3_3 = L3_3.BtrDeleteFile
    L3_3(L2_2)
  end
end
