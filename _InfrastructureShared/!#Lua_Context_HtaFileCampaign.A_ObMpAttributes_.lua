local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
if L0_0 == nil or #L0_0 < 15 then
  return mp.CLEAN
end
if string.match(string.lower(L0_0), "^player%d%d%d%d%d.+%.hta$") == nil or 15 > #string.match(string.lower(L0_0), "^player%d%d%d%d%d.+%.hta$") then
  return mp.CLEAN
end
return mp.INFECTED
