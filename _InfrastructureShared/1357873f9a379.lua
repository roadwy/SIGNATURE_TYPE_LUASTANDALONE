if pehdr.NumberOfSections > 2 and (pesecs[2].Name == ".rdat" or pesecs[2].Name == ".rtxt") then
  mp.set_mpattribute("HSTR:Virus:Win32/Nemim!mother")
end
return mp.INFECTED
