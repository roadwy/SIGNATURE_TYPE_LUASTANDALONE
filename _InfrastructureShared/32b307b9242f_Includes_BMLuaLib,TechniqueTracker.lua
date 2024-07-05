local L0_0
L0_0 = {
  "wscript.exe",
  "cscript.exe"
}
if IsProcNameInParentProcessTree("BM", L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
