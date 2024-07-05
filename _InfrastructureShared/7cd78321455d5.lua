if not mp.get_mpattribute("PEPCODE:HasDigitalSignature") and mp.getfilesize() < 9000000 and (mp.get_mpattribute("HSTR:Win32/DelphiFile") or mp.get_mpattribute("SIGATTR:DelphiFile") or peattributes.is_delphi or peattributes.isvbpcode or peattributes.isvbnative) then
  return mp.INFECTED
end
return mp.CLEAN
