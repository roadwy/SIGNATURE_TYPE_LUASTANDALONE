local L0_0
L0_0 = {
  "psexesvc.exe",
  "psexec.exe"
}
if IsProcNameInParentProcessTree("BM", L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
