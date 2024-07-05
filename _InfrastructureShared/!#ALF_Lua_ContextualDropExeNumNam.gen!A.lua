if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isexe then
    return mp.CLEAN
  end
  if peattributes.isdriver then
    return mp.CLEAN
  end
  if not peattributes.no_security then
    return mp.CLEAN
  end
  if mp.getfilesize() > 1000000 then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):len() >= 5 then
    if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^%d+%[%d%]%.exe$") == 1 then
      return mp.INFECTED
    end
    if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^%d+%.exe$") == 1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
