if peattributes.no_security == false and mp.getfilesize() > 950272 and mp.getfilesize() < 978944 and mp.get_mpattribute("TEL:Ransom:Win32/Megacortex!sl001") then
  return mp.INFECTED
end
return mp.CLEAN
