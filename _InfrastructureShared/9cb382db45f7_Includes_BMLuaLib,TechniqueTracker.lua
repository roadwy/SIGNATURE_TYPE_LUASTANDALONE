local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = {
  L2_2,
  "\\appdata\\local\\apps\\2.0\\",
  "icue.exe"
}
L2_2 = "\\program files"
L2_2 = contains
L2_2 = L2_2(L0_0, L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "mspub.exe",
  "wscript.exe",
  "cscript.exe",
  "mshta.exe",
  "powershell.exe",
  "pwsh.exe",
  "rundll32.exe",
  "regsvr32.exe",
  "wmic.exe",
  "wmiprvse.exe"
}
if IsProcNameInParentProcessTree("BM", L2_2) then
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
