if peattributes.is_delphi then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if mp.ispackedwith("AutoHotKey_+") then
  return mp.CLEAN
end
if mp.ispackedwith("AutoIt_+") or mp.get_mpattributesubstring("Win32/AutoIt") or mp.get_mpattributesubstring("PESTATIC:cleanstub_autoitv") then
  if pesecs[1].Name ~= ".text" then
    return mp.CLEAN
  end
  while 0 < 2 do
    if pesecs[pehdr.NumberOfSections - 0].Name ~= ".extra" then
      if pesecs[pehdr.NumberOfSections - 0].Name == ".rsrc" then
        return mp.CLEAN
      end
      if pesecs[pehdr.NumberOfSections - 0].Name == ".reloc" and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_BASERELOC].Size < pesecs[1].SizeOfRawData / 2 then
        return mp.CLEAN
      end
    end
  end
  return mp.INFECTED
end
return mp.CLEAN
