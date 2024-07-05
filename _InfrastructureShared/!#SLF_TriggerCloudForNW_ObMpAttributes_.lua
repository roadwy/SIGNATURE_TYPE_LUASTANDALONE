local L0_0
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
if not mp.is_handle_nil(L0_0) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == nil or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_TRUSTCHECK then
  return mp.CLEAN
end
if mp.IsTrustedFile(false) == false then
  return mp.INFECTED
end
return mp.CLEAN
