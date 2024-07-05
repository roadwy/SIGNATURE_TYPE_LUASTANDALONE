if 30000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
reportRelatedBmHits()
addRelatedProcess()
return mp.INFECTED
