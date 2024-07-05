function RemoveLdpinchAppDataValue()
  local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
  L0_0 = sysio
  L0_0 = L0_0.RegOpenKey
  L1_1 = "HKLM\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Run"
  L0_0 = L0_0(L1_1)
  if L0_0 ~= nil then
    L1_1 = sysio
    L1_1 = L1_1.RegEnumValues
    L1_1 = L1_1(L2_2)
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = sysio
      L7_7 = L7_7.GetRegValueType
      L8_8 = L0_0
      L7_7 = L7_7(L8_8, L9_9)
      if L7_7 == 2 then
        L7_7 = sysio
        L7_7 = L7_7.GetRegValueAsString
        L8_8 = L0_0
        L7_7 = L7_7(L8_8, L9_9)
        if L7_7 ~= nil then
          L8_8 = sysio
          L8_8 = L8_8.ExpandFilePath
          L8_8 = L8_8(L9_9, L10_10)
          for L12_12, L13_13 in L9_9(L10_10) do
            L13_13 = string.lower(L13_13)
            for _FORV_17_, _FORV_18_ in ipairs(Remediation.Threat.Resources) do
              if _FORV_18_.Schema == "file" and string.lower(_FORV_18_.Path) == L13_13 then
                sysio.DeleteRegValue(L0_0, L6_6)
              end
            end
          end
        end
      end
    end
  end
end
function Is64BitOperatingSystem()
  local L0_14, L1_15
  L0_14 = Info
  L0_14 = L0_14.EngineHost
  L0_14 = L0_14 == "HOST_X64"
  return L0_14
end
function IsWindows8OrGreater()
  local L0_16, L1_17
  L0_16 = Info
  L0_16 = L0_16.OSMajorVersion
  if L0_16 == 6 then
    L0_16 = Info
    L0_16 = L0_16.OSMinorVersion
  L0_16 = L0_16 > 1 or L0_16.OSMinorVersion
  return L0_16
end
if IsWindows8OrGreater() and Is64BitOperatingSystem() then
  RemoveLdpinchAppDataValue()
end
