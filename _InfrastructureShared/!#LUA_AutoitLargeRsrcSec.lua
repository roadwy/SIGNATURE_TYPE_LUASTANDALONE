if peattributes.is_delphi then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if mp.ispackedwith("AutoHotKey_+") then
  return mp.CLEAN
end
if pesecs[1].Name ~= ".text" then
  return mp.CLEAN
end
if mp.ispackedwith("AutoIt_+") or mp.get_mpattributesubstring("Win32/AutoIt") or mp.get_mpattributesubstring("PESTATIC:cleanstub_autoitv") then
  if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE].RVA == 0 then
    return mp.CLEAN
  end
  if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE].Size >= 3072000 then
    mp.set_mpattribute("AutoItIgnoreMaxSizes")
    return mp.INFECTED
  end
end
return mp.CLEAN
