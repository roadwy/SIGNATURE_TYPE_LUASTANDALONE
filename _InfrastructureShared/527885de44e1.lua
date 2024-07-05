local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "RPF:TopLevelFile"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L6_6 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1())
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = MpCommon
L1_1 = L1_1.GetMountedFileBackingFilePath
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.get_versioninfo
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.OriginalFilename
if L3_3 == "WerFaultSecure.exe" then
  L3_3 = L2_2.InternalName
  if L3_3 == "WerFaultSecure" then
    L3_3 = L2_2.FileDescription
  end
elseif L3_3 ~= "Windows Fault Reporting" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L4_4 = "PEPCODE:HasDigitalSignature"
L3_3 = L3_3(L4_4)
if L3_3 then
  L3_3 = L2_2.CompanyName
elseif L3_3 ~= "Microsoft Corporation" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = versioning
L3_3 = L3_3.GetOsVersion
L3_3 = L3_3()
if L3_3 <= 393220 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.get_fixedversioninfo
L4_4 = L4_4()
L5_5 = crypto
L5_5 = L5_5.shr64
L6_6 = L4_4.FileVersion
L5_5 = L5_5(L6_6, 48)
if L5_5 >= 10 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = nil
L6_6 = mp.getfilename()
if L6_6 == nil then
  return mp.CLEAN
end
L6_6 = MpCommon.PathToWin32Path(L6_6)
MpCommon.SetOriginalFileName(L6_6, "VulnWerFaultSecureExe.exe")
return mp.INFECTED
