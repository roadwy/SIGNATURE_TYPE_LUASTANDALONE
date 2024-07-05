local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:PeOriginalName!rclone.exe"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = StringEndsWith
L1_1 = L1_1(L0_0, ".exe")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "\\program files",
  "\\rclone.exe",
  "\\cmmagent.exe",
  "\\gclone.exe",
  "\\lclone.exe",
  "\\fclone.exe",
  "\\cbdownloader.exe",
  "rclone"
}
if contains(L0_0, L1_1) then
  return mp.CLEAN
else
  return mp.INFECTED
end
return mp.CLEAN
