if mp.getfilename():len() < 14 then
  return mp.CLEAN
end
if mp.getfilename():sub(-14) ~= "\\pps-qq-19.exe" then
  return mp.CLEAN
end
return mp.INFECTED
