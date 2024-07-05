if mp.get_mpattribute("InEmail") then
  mp.set_mpattribute("//MpIsExhaustiveScriptScan")
  return mp.INFECTED
end
return mp.CLEAN
