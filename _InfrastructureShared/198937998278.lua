if pevars.sigaddr == pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  pe.set_peattribute("disable_apicall_limit", true)
  return mp.INFECTED
end
return mp.CLEAN
