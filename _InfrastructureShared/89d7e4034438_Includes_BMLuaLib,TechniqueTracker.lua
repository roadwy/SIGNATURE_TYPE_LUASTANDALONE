local L0_0
L0_0 = {"java.exe", "javaw.exe"}
if IsProcNameInParentProcessTree("cmdhstr", L0_0) then
  return mp.LOWFI
end
return mp.CLEAN
