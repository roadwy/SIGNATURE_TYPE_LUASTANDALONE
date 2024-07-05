if mp.get_mpattribute("HSTR:Win32/Kernel32_via_PEB") and peattributes.executes_from_dynamic_memory and pehdr.SizeOfImage >= 196608 and pehdr.SizeOfImage <= 5242880 then
  mp.changedetectionname(805306470)
  return mp.INFECTED
end
return mp.SUSPICIOUS
