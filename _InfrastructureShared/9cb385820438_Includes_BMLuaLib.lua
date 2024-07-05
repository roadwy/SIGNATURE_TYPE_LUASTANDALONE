local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if not contains(L0_0, {
  "rundll32.exe",
  "rundll32-low.exe",
  "connectdetector.exe",
  "program files",
  "iscurrentjobalreadyrunning.exe",
  "musnotification.exe"
}) then
  return mp.INFECTED
end
return mp.CLEAN
