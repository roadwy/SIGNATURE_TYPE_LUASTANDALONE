if (mp.get_mpattribute("HSTR:NSIS_Installer") or mp.get_mpattribute("HSTR:NSIS.gen!A")) and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].Size == 0 then
  return mp.INFECTED
end
return mp.CLEAN
