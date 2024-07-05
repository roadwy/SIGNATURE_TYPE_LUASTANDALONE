if mp.get_mpattribute("RPF:PWS:Win32/Simda.gen!B") or peattributes.executes_from_dynamic_memory and peattributes.suspicious_image_version and pehdr.SizeOfImage >= 1048576 and pehdr.SizeOfImage <= 5242880 or pehdr.SizeOfImage >= 655360 and pehdr.SizeOfImage <= 851968 then
  mp.changedetectionname(805306411)
  return mp.INFECTED
end
return mp.SUSPICIOUS
