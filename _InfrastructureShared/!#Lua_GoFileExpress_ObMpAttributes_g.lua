if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if pesecs[1].SizeOfRawData ~= 0 or pesecs[2].SizeOfRawData ~= 0 or pesecs[3].SizeOfRawData ~= 0 or pesecs[4].SizeOfRawData ~= 0 then
  return mp.CLEAN
end
if pesecs[5].SizeOfRawData < 2097151 then
  return mp.CLEAN
end
if pesecs[1].Name ~= ".text" then
  return mp.CLEAN
end
if pesecs[2].Name ~= ".rdata" then
  return mp.CLEAN
end
if pesecs[3].Name ~= ".data" then
  return mp.CLEAN
end
if string.match(pesecs[4].Name, "^%.%a%a%a%a?%a?0$") == nil then
  return mp.CLEAN
end
if string.match(pesecs[5].Name, "^%.%a%a%a%a?%a?1$") == nil then
  return mp.CLEAN
end
if pesecs[6].Name ~= ".rsrc" then
  return mp.CLEAN
end
if peattributes.dt_error_heur_exit_criteria then
  if pe.get_versioninfo() ~= nil and string.find(pe.get_versioninfo().LegalCopyright, "Copyright http://simple%-files.com %(C%)") ~= nil then
    mp.set_mpattribute("Program:Win32/SimpleFileInstaller")
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
