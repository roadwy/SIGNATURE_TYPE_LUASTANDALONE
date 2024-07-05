local L0_0
L0_0 = {
  "sqlservr.exe"
}
if IsProcNameInParentProcessTree("cmdhstr", L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
