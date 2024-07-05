if mp.get_mpattribute("LowFiDropboxUnderWin") and mp.get_mpattribute("SIGATTR:ASEP") then
  return mp.INFECTED
end
if hstrlog[1].hitcount == 0 and hstrlog[2].hitcount == 0 and hstrlog[3].hitcount == 0 then
  return mp.CLEAN
end
if hstrlog[4].hitcount == 0 and hstrlog[5].hitcount == 0 and hstrlog[6].hitcount == 0 then
  return mp.CLEAN
end
if hstrlog[7].hitcount == 0 and hstrlog[8].hitcount == 0 and hstrlog[9].hitcount == 0 then
  return mp.CLEAN
end
return mp.INFECTED
