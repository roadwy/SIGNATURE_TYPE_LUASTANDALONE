local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or #L0_0 <= 15 or string.sub(L0_0, -12) ~= "\\spoolsv.exe" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "tt_remediate", "priteshell_malware")
return mp.INFECTED
