local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(bm.get_imagepath())
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath()))
L1_1 = contains
L1_1 = L1_1(L0_0, MpCommon.ExpandEnvironmentVariables("%systemdrive%"))
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  ":\\programData\\anydesk.exe",
  ":\\perflogs\\",
  ":\\windows\\help\\",
  ":\\windows\\debug\\",
  ":\\windows\\tapi\\",
  ":\\wmpub\\"
}
if contains(L0_0, L1_1) then
  reportSessionInformationInclusive()
  add_parents()
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN
