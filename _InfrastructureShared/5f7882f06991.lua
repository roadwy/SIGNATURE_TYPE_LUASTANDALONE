if pehdr.NumberOfSections == 9 and mp.get_mpattribute("TELPER:QQBrowser") then
  return mp.INFECTED
end
return mp.CLEAN
