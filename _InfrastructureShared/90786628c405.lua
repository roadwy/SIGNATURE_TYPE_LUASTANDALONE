if mp.get_mpattribute("NID:TelAttrib") and peattributes.no_security == true and mp.getfilesize() <= 77824 and mp.getfilesize() >= 73728 and peattributes.isdll and peattributes.hasexports and pehdr.NumberOfSections == 4 and pehdr.SizeOfImage == 86016 then
  return mp.INFECTED
end
return mp.CLEAN
