local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -10))
if L0_0 == "\\lsass.exe" then
  mp.TriggerScanResource("rootkittelemetry", "")
  return mp.INFECTED
end
return mp.CLEAN
