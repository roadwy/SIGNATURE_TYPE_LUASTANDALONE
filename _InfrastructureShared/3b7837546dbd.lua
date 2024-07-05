if peattributes.epinfirstsect and pe.contains_va(1, hstrlog[1].VA) and mp.get_mpattribute("LUA:Win32/Tarctox") then
  return mp.INFECTED
end
return mp.CLEAN
