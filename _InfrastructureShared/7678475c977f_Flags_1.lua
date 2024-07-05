if mp.getfilename(mp.FILEPATH_QUERY_FNAME):lower():find("urefs.dll", 1, true) then
  return mp.CLEAN
end
if pe.get_versioninfo() ~= nil and pe.get_versioninfo().OriginalFilename:lower() == "urefs.dll" then
  return mp.CLEAN
end
if hstrlog[2].matched then
end
if hstrlog[3].matched then
end
if hstrlog[4].matched then
end
if hstrlog[5].matched then
end
if hstrlog[6].matched then
end
if hstrlog[7].matched then
end
if hstrlog[8].matched then
end
if hstrlog[9].matched then
end
if hstrlog[10].matched then
end
if hstrlog[11].matched then
end
if hstrlog[1].matched and 0 + 1 + 1 + 1 + 1 + 1 == 5 or 0 + 1 + 1 + 1 + 1 + 1 == 5 then
  return mp.INFECTED
end
return mp.CLEAN
