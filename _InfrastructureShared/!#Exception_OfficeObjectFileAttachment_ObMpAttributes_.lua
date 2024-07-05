local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, "argus.pptx->ppt/embeddings/oleobject", 1, true) ~= nil or string.find(L0_0, "conductor - sizing, single phase.pptx->ppt/embeddings/oleobject", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
