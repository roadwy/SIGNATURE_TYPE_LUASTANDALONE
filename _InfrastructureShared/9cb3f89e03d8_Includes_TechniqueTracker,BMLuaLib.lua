local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L3_3 = L2_2()
L3_3 = L1_1(L2_2, L3_3, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3, L2_2()))
L1_1 = contains
L2_2 = L0_0
L3_3 = MpCommon
L3_3 = L3_3.ExpandEnvironmentVariables
L3_3 = L3_3("%systemdrive%")
L1_1 = L1_1(L2_2, L3_3, L3_3("%systemdrive%"))
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  ":\\recovery\\"
}
L2_2 = ":\\windows\\"
L3_3 = ":\\users\\public\\"
L2_2 = contains
L3_3 = L0_0
L2_2 = L2_2(L3_3, L1_1)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.command_line
  if L3_3 ~= nil then
    L3_3 = {
      "mega",
      "webdav",
      "copy",
      "ftp"
    }
    if contains(L2_2.command_line, L3_3) then
      bm.add_threat_file(L0_0)
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
