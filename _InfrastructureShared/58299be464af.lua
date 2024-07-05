local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 then
  L0_0 = string.lower(L0_0)
  if L0_0:find("viewer.aspx", 1, true) then
    return mp.CLEAN
  end
  if L0_0:find("\\appdata\\.+\\outlook\\.+autodiscover.xml") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
