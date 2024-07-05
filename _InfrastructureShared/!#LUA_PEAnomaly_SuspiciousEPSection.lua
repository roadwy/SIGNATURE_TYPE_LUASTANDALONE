if pevars.epsec == 4294967296 or pevars.epsec == -1 then
  mp.set_mpattribute("LUA:PEAnomaly_InvalidEPSection")
  return mp.CLEAN
end
if epcode[1] == 0 or epcode[1] == 204 or epcode[1] == 195 then
  mp.set_mpattribute("LUA:PEAnomaly_UnusualEPCode")
end
if tostring(pesecs[pevars.epsec].Name) == ".rsrc" or tostring(pesecs[pevars.epsec].Name) == ".rdata" or tostring(pesecs[pevars.epsec].Name) == ".data" or tostring(pesecs[pevars.epsec].Name) == ".pdata" or tostring(pesecs[pevars.epsec].Name) == ".reloc" then
  return mp.INFECTED
end
return mp.CLEAN
