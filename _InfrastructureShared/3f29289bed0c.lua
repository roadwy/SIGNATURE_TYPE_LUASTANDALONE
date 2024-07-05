local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 then
  L0_0 = string.lower(L0_0)
  if L0_0:find("\\appdata\\.+\\thunderbird\\profiles\\") then
    return mp.CLEAN
  end
  if L0_0:find("\\logging\\.+queue\\.+%.log") then
    return mp.CLEAN
  end
  if L0_0:find("%.rss$") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
