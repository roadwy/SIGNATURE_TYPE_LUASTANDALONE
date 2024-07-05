local L0_0
L0_0 = {
  "appsetup%.exe",
  "p1%.exe",
  "p2%.exe",
  "p3%.exe",
  "p4%.exe",
  "p5%.exe",
  "p6%.exe",
  "p7%.exe",
  "p8%.exe",
  "p9%.exe",
  "p10%.exe"
}
function DeleteRegistryEntriesOnValueMatch(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13
  if A0_1 then
    L2_3 = sysio
    L2_3 = L2_3.RegEnumValues
    L2_3 = L2_3(L3_4)
    for L6_7, L7_8 in L3_4(L4_5) do
      for L11_12, L12_13 in L8_9(L9_10) do
        if string.match(L7_8, L12_13) then
          sysio.DeleteRegValue(A0_1, L7_8)
        end
      end
    end
  end
end
function FixTamperedExclusionRegEntries(A0_14)
  local L1_15
  L1_15 = sysio
  L1_15 = L1_15.RegOpenKey
  L1_15 = L1_15(A0_14 .. "Processes")
  DeleteRegistryEntriesOnValueMatch(L1_15, _UPVALUE0_)
end
if Infrastructure_CheckMSEpresence() then
  FixTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\")
elseif Infrastructure_CheckDefenderpresence() then
  FixTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\")
end
