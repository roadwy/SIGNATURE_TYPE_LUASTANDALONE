local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Lua:PeOriginalName!rclone.exe")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Lua:PeInternalName!rclone")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L0_0 = L0_0(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L0_0 == nil then
  return mp.CLEAN
end
MpCommon.SetOriginalFileName(L0_0, "rclone.exe")
return mp.INFECTED
