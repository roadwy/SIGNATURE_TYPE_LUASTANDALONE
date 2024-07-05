if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.ismsil then
  mp.set_mpattribute("HSTR:PossibleMSILDownloader.A")
  return mp.INFECTED
end
if peattributes.isvbpcode or peattributes.isvbnative then
  mp.set_mpattribute("HSTR:PossibleVBDownloader.A")
  return mp.INFECTED
end
if peattributes.is_delphi or mp.get_mpattribute("SIGATTR:DelphiFile") or mp.get_mpattribute("HSTR:Win32/DelphiFile") then
  mp.set_mpattribute("HSTR:PossibleDelphiDownloader.A")
  return mp.INFECTED
end
return mp.CLEAN
