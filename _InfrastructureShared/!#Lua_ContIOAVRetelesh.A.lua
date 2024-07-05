if mp.IOAVGetDownloadUrl() == nil then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find("^sample%d%d%d%.") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  return mp.INFECTED
end
return mp.CLEAN
