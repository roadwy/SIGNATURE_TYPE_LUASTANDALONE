local L0_0
L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L0_0 == nil or string.len(L0_0) == 0 then
  L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)
  if L0_0 == nil or string.len(L0_0) == 0 then
    return mp.CLEAN
  end
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "^.:\\windows\\ccmcache\\") then
  return mp.CLEAN
end
if string.match(L0_0, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files" then
  return mp.CLEAN
end
if string.match(L0_0, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files (x86)" then
  return mp.CLEAN
end
return mp.INFECTED
