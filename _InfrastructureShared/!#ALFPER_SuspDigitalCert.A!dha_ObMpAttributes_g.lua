if mp.get_mpattributevalue("RPF:SuspiciousDigitalSignatureSize") ~= nil and mp.get_mpattributevalue("RPF:SuspiciousDigitalSignatureSize") >= 65536 then
  return mp.INFECTED
end
return mp.CLEAN
