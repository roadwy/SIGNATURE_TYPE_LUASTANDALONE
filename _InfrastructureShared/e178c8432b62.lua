if pehdr.SizeOfImage >= 65536 and pehdr.SizeOfImage <= 131072 and peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
else
  mp.changedetectionname(805306395)
  return mp.SUSPICIOUS
end
return mp.CLEAN
