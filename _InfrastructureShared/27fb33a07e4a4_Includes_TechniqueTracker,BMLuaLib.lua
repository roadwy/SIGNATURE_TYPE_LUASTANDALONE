local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_SMS_level
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SMS_SCAN_LOW_ADV
L3_3 = mp
L3_3 = L3_3.SMS_SCAN_LOW
L2_2 = L2_2 - L3_3
L3_3 = mp
L3_3 = L3_3.bitand
L3_3 = L3_3(L1_1, L2_2)
if L2_2 == L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_imagepath
L3_3 = L3_3()
if not L3_3 then
  return mp.CLEAN
end
L3_3 = string.lower(MpCommon.PathToWin32Path(L3_3))
if string.find(L3_3, "\\\\puddingzip\\\\pdzipservice.exe", 30, true) or string.find(L3_3, "\\\\santivirus\\\\santivirusic.exe", 30, true) or string.find(L3_3, "\\\\cloudvolumes\\\\agent\\\\svservice.exe", 36, true) or string.find(L3_3, "\\\\segurazo\\\\segurazoic.exe", 26, true) or string.find(L3_3, "\\\\thirtyseven4\\\\scsecsvc.exe", 28, true) or string.find(L3_3, "\\\\application manager\\\\agent\\\\amagentassist.exe", 47, true) or string.find(L3_3, "\\\\bitdefender\\\\tools\\\\bdantiransomware\\\\bdantiransomware.exe", 60, true) then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
return mp.INFECTED
