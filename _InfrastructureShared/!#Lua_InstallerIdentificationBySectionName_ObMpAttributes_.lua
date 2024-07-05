if string.find(tostring(pesecs[pehdr.NumberOfSections].Name), "_winzip_", 1, true) ~= nil then
  mp.set_mpattribute("LUA:WinZip_winsfx")
  return mp.INFECTED
end
return mp.CLEAN
