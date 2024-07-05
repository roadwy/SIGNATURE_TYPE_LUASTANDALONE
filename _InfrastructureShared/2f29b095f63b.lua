if mp.getfilesize() < 2097152 then
  mp.set_mpattribute("MpIsExhaustiveScriptScan")
  mp.set_mpattribute("NScript:NoParsingLimits")
  return mp.INFECTED
end
return mp.CLEAN
