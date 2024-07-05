if peattributes.isdll and mp.get_mpattribute("MpCPlApplet") and (mp.get_mpattribute("SIGATTR:DelphiFile") or mp.get_mpattribute("HSTR:Win32/DelphiFile")) then
  mp.set_mpattribute("SIGATTR:Reboon_Lowfi")
  return mp.INFECTED
end
return mp.CLEAN
