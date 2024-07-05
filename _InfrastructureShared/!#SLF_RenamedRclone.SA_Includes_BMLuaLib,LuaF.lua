local L0_0, L1_1, L2_2
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = StringEndsWith
L2_2 = L0_0
L1_1 = L1_1(L2_2, ".exe")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  "\\rclone.exe",
  "\\cmmagent.exe",
  "\\gclone.exe",
  "\\lclone.exe",
  "\\fclone.exe",
  "\\cbdownloader.exe",
  "rclone"
}
L2_2 = "\\program files"
L2_2 = contains
L2_2 = L2_2(L0_0, L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetOriginalFileName
L2_2 = L2_2(L0_0)
if L2_2 and string.find(L2_2, "rclone.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
