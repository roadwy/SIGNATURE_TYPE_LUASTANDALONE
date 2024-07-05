if pevars.sigaddr ~= pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.CLEAN
end
if pe.query_import(pe.IMPORT_STATIC, 214667374) and mp.crc32(-1, epcode, 17, 17) == 3988924912 then
  return mp.INFECTED
end
return mp.CLEAN
