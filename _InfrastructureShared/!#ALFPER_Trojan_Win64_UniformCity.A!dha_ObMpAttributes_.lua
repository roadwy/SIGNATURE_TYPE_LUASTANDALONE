local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = ""
L1_1 = ""
L2_2 = ""
L3_3 = sysio
L3_3 = L3_3.GetFileFsVolumeInformation
L4_4 = "C:"
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L4_4 = L3_3.VolumeSerialNumber
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.format
    L5_5 = "%x"
    L4_4 = L4_4(L5_5, L3_3.VolumeSerialNumber)
    L0_0 = L4_4
  end
end
L4_4 = sysio
L4_4 = L4_4.RegOpenKey
L5_5 = "HKLM\\Software\\Microsoft\\Cryptography"
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  L5_5 = sysio
  L5_5 = L5_5.GetRegValueAsString
  L5_5 = L5_5(L4_4, "MachineGuid")
  L1_1 = L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L5_5 = L5_5("%COMPUTERNAME%")
L2_2 = L5_5
if L0_0 ~= "" and L1_1 ~= "" and L2_2 ~= "" then
  L5_5 = string
  L5_5 = L5_5.format
  L5_5 = L5_5("%s;%s;%s", L0_0, L1_1, L2_2)
  L5_5 = MpCommon.Base64Encode(L5_5)
  mp.set_mpattribute(string.format("MpInternal_researchdata=DhaDeviceInfo=%s", L5_5))
end
L5_5 = mp
L5_5 = L5_5.INFECTED
return L5_5
