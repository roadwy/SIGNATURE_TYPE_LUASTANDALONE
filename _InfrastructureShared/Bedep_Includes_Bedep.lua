local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
function L0_0(A0_20, A1_21, A2_22)
  local L3_23, L4_24
  if A0_20 and A1_21 and A2_22 then
    L3_23 = sysio
    L3_23 = L3_23.RegOpenKey
    L4_24 = A0_20
    L4_24 = L4_24 .. "Software\\Classes\\CLSID\\" .. A1_21 .. "\\InprocServer32"
    L3_23 = L3_23(L4_24)
    if L3_23 then
      L4_24 = sysio
      L4_24 = L4_24.GetRegValueAsString
      L4_24 = L4_24(L3_23, "")
      if string.lower("\\\\?\\" .. L4_24) == string.lower(A2_22) then
        return true
      end
    end
  end
  L3_23 = false
  return L3_23
end
IsBedepInstalled = L0_0
L0_0 = sysio
L0_0 = L0_0.RegExpandUserKey
L0_0 = L0_0(L1_1)
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = Infrastructure_ScanBedepClsid
  L6_6 = L6_6(L7_7)
  for L10_10, L11_11 in L7_7(L8_8) do
    for L15_15, L16_16 in L12_12(L13_13) do
      L17_17 = L16_16.Schema
      if L17_17 == "file" then
        L17_17 = L16_16.Path
        if L17_17 ~= nil then
          L18_18 = IsBedepInstalled
          L19_19 = L5_5
          L18_18 = L18_18(L19_19, L11_11, L17_17)
          if L18_18 then
            L18_18 = Remediation
            L18_18 = L18_18.BtrDeleteFile
            L19_19 = L17_17
            L18_18(L19_19)
            L18_18 = sysio
            L18_18 = L18_18.RegOpenKey
            L19_19 = L5_5
            L19_19 = L19_19 .. "Software\\Classes\\CLSID\\" .. L11_11 .. "\\InprocServer32"
            L18_18 = L18_18(L19_19)
            L19_19 = sysio
            L19_19 = L19_19.DeleteRegValue
            L19_19(L18_18, "")
            L19_19 = sysio
            L19_19 = L19_19.RegOpenKey
            L19_19 = L19_19(L5_5 .. "Software\\Classes\\Drive\\ShellEx\\FolderExtensions\\" .. L11_11)
            sysio.DeleteRegValue(L19_19, "DriveMask")
          end
        end
      end
    end
  end
end
