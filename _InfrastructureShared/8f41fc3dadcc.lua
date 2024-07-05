mp.set_mpattribute("SIGATTR:Upatre!antiemu_vdll_max8_noseccheck")
if pesecs[1].SizeOfRawData ~= 1536 then
  return mp.CLEAN
end
return mp.INFECTED
