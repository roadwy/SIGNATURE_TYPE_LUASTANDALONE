if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 1) or MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  if mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) ~= true then
    return mp.CLEAN
  end
  if mp.IsTrustedFile(true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
