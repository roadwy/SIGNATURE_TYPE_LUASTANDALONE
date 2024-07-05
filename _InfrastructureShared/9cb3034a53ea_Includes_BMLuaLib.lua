local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[2].utf8p1)
  L0_0 = L1_1
end
L1_1 = {
  "regsvr32.exe",
  "regsvr32_wow64.exe",
  "regsvr32internal.exe",
  "regsvr32_x64.exe",
  "regsvr32_x86.exe",
  "regsvr32_0.exe",
  "program files",
  "\\windows\\installer\\",
  "wilcomregsvr32setup.exe",
  "nemu-backup.exe",
  "nemu9-backup.exe"
}
if not contains(L0_0, L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
