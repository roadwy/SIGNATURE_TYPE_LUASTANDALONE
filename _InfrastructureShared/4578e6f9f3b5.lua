if mp.get_mpattribute("LUA:FileSizeLE1M.A") and pehdr.NumberOfSections == 3 and peattributes.ismsil == false then
  return mp.INFECTED
end
return mp.CLEAN
