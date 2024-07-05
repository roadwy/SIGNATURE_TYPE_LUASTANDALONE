local L0_0
L0_0 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "mspub.exe"
}
if IsProcNameInParentProcessTree("cmdhstr", L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
