local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  addRelatedProcess()
  reportRelatedBmHits()
  if sysio.IsFileExists(L0_0) then
    bm.add_threat_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
