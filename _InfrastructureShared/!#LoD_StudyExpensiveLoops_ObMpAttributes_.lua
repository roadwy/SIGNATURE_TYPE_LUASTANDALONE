if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if mp.getfilesize() >= 204800 then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG].RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_BASERELOC].RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE].RVA ~= 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE].Size >= 2048 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 or peattributes.isappcontainer or peattributes.resource_only_dll or peattributes.no_ep or peattributes.dmg_entrypoint or peattributes.dmg_not_executable_image or peattributes.dmg_truncated then
  return mp.CLEAN
end
if peattributes.dynmem_APIcall and mp.get_mpattribute("MpAPILimitReached") then
  return mp.INFECTED
end
if mp.get_mpattribute("MpAPILimitReached") and peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
end
if mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.dynmem_APIcall then
  return mp.INFECTED
end
if mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
end
return mp.CLEAN
