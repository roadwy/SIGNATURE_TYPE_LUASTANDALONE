if pehdr.SizeOfImage >= 131072 then
  return mp.INFECTED
elseif pehdr.SizeOfImage >= 57344 then
  mp.changedetectionname(805306405)
  return mp.INFECTED
else
  mp.changedetectionname(805306406)
  return mp.SUSPICIOUS
end
return mp.CLEAN
