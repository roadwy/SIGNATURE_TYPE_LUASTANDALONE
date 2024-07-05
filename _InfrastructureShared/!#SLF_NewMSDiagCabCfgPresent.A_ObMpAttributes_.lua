if mp.get_mpattribute("//Lua:NewDiagCabFile") and mp.getfilename() ~= nil and mp.getfilename():lower():match("%.diagcab%-%>.+%.diagcfg$") then
  return mp.INFECTED
end
return mp.CLEAN
