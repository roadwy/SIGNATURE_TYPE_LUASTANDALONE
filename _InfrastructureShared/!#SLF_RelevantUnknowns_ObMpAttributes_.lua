if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= nil and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_UNKNOWN then
  return mp.CLEAN
end
if mp.GetResmgrBasePlugin() ~= "Folder" then
  return mp.CLEAN
end
if string.lower(mp.getfilename()):find(":\\windows\\winsxs", 1, true) ~= nil then
  return mp.CLEAN
end
if string.lower(mp.getfilename()):find(":\\windows\\installer", 1, true) ~= nil then
  return mp.CLEAN
end
if string.lower(mp.getfilename()):find(":\\sccmcontentlib\\filelib", 1, true) ~= nil then
  return mp.CLEAN
end
if mp.IsTrustedFile(false) == false then
  return mp.INFECTED
end
return mp.CLEAN
