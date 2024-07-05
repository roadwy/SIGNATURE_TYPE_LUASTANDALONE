if mp.get_mpattribute("SIGATTR:DelphiFile") and pehdr.NumberOfSections == 8 then
  pe.set_image_filename("\"myapp.exe\" /install")
  pe.reemulate()
end
return mp.INFECTED
