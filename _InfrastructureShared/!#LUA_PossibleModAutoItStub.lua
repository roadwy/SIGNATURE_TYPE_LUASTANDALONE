if peattributes.is_delphi then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if mp.ispackedwith("AutoHotKey_+") or mp.ispackedwith("UPX") then
  return mp.CLEAN
end
if mp.get_mpattributesubstring("PESTATIC:cleanstub_autoitv") then
  return mp.CLEAN
end
if mp.ispackedwith("AutoIt_+") or mp.get_mpattributesubstring("Win32/AutoIt") then
  return mp.INFECTED
end
return mp.CLEAN
