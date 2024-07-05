local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  local L2_7, L3_8, L4_9, L5_10, L6_11, L7_12
  if A0_5 == nil then
    return
  end
  L2_7 = sysio
  L2_7 = L2_7.RegEnumValues
  L2_7 = L2_7(L3_8)
  if L2_7 == nil then
    return
  end
  for L6_11, L7_12 in L3_8(L4_9) do
    if L7_12 ~= nil then
      L7_12 = string.lower(L7_12)
      for _FORV_11_, _FORV_12_ in pairs(A1_6) do
        if L7_12 == _FORV_12_ then
          sysio.DeleteRegValue(A0_5, L7_12)
        end
      end
    end
  end
end
DeleteRegistryEntriesOnValueMatch = L0_0
function L0_0(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23, L11_24, L12_25
  L1_14 = {}
  for L5_18, L6_19 in L2_15(L3_16) do
    L7_20 = sysio
    L7_20 = L7_20.ExpandFilePath
    L7_20 = L7_20(L8_21, L9_22)
    if L7_20 ~= nil then
      for L11_24, L12_25 in L8_21(L9_22) do
        L12_25 = string.gsub(L12_25, "^\\\\%?\\", "")
        table.insert(L1_14, L12_25:lower())
      end
    end
  end
  return L1_14
end
GetPathsFromExpandFilePath = L0_0
L0_0 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\"
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = L0_0
L3_3 = "Extensions"
L2_2 = L2_2 .. L3_3
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = {L3_3, L4_4}
  L3_3 = "exe"
  L4_4 = "dll"
  L3_3 = DeleteRegistryEntriesOnValueMatch
  L4_4 = L1_1
  L3_3(L4_4, L2_2)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = L0_0
L4_4 = "Paths"
L3_3 = L3_3 .. L4_4
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = {
    L4_4,
    "%userprofile%",
    "%appdata%",
    "%systemroot%",
    "%homedrive%",
    "%temp%"
  }
  L4_4 = "%systemdrive%"
  L4_4 = GetPathsFromExpandFilePath
  L4_4 = L4_4(L3_3)
  L3_3 = L4_4
  L4_4 = DeleteRegistryEntriesOnValueMatch
  L4_4(L2_2, L3_3)
end
L3_3 = sysio
L3_3 = L3_3.RegOpenKey
L4_4 = L0_0
L4_4 = L4_4 .. "Processes"
L3_3 = L3_3(L4_4)
if L3_3 then
  L4_4 = {
    "c:\\windows\\system32\\windowspowershell\\v1.0\\powershell.exe"
  }
  DeleteRegistryEntriesOnValueMatch(L3_3, L4_4)
end
