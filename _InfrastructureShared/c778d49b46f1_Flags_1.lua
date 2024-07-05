if pehdr.SizeOfImage >= 786432 and pehdr.SizeOfImage <= 851968 or pehdr.SizeOfImage >= 479232 and pehdr.SizeOfImage <= 520192 or pehdr.SizeOfImage >= 589824 and pehdr.SizeOfImage <= 606208 then
  return mp.INFECTED
end
mp.changedetectionname(805306378)
return mp.SUSPICIOUS
