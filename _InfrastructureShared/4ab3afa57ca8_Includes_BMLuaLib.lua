local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L2_2())
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
L1_1 = {
  L2_2,
  "winscp_",
  "shimgen.exe"
}
L2_2 = "winscp-"
L2_2 = contains
L2_2 = L2_2(L0_0, L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L2_2 = L2_2(L0_0, MpCommon.ExpandEnvironmentVariables("%systemdrive%"))
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  ":\\programData\\",
  ":\\perflogs\\",
  ":\\windows\\help\\",
  ":\\windows\\debug\\",
  ":\\windows\\tapi\\",
  ":\\windows\\temp\\",
  ":\\wmpub\\",
  ":\\intel\\",
  "\\music\\"
}
if contains(L0_0, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
