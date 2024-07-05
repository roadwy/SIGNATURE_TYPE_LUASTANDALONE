mp.readprotection(false)
if mp.readfile(84, 2) ~= nil and mp.readfile(84, 2) == 523 then
  return mp.INFECTED
end
return mp.CLEAN
