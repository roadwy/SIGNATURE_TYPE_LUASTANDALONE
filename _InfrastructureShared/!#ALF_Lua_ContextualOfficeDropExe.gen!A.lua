if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if peattributes.isexe == false then
    return mp.CLEAN
  end
  if peattributes.isdriver == true then
    return mp.CLEAN
  end
  if peattributes.no_security == false then
    return mp.CLEAN
  end
  if ({
    ["excel.exe"] = true,
    ["lync.exe"] = true,
    ["powerpnt.exe"] = true,
    ["pptview.exe"] = true,
    ["visio.exe"] = true,
    ["winword.exe"] = true,
    ["wordview.exe"] = true,
    ["xlview.exe"] = true
  })[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))] then
    return mp.INFECTED
  end
end
return mp.CLEAN
