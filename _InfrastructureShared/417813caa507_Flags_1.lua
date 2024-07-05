if peattributes.executes_from_dynamic_memory then
  if pehdr.SizeOfImage > 2031616 and pehdr.SizeOfImage < 2097152 or pehdr.SizeOfImage > 2359296 and pehdr.SizeOfImage < 2539520 then
    mp.changedetectionname(805306373)
    return mp.INFECTED
  end
  if pehdr.SizeOfImage > 5111808 and pehdr.SizeOfImage < 5177344 or pehdr.SizeOfImage > 4849664 and pehdr.SizeOfImage < 4857856 or pehdr.SizeOfImage > 5308416 and pehdr.SizeOfImage < 5373952 then
    return mp.INFECTED
  end
  mp.changedetectionname(805306374)
  return mp.SUSPICIOUS
end
if mp.HSTR_WEIGHT == 6 then
  mp.set_mpattribute("Obfuscator_LowFi")
  return mp.CLEAN
end
return mp.CLEAN
