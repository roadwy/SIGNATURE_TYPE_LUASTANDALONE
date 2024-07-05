if mp.readu_u32(headerpage, 1) ~= 1953651835 then
  return mp.CLEAN
end
mp.set_mpattribute("MpIsExhaustiveScriptScan")
return mp.INFECTED
