if peattributes.isdll and (mp.get_mpattribute("SIGATTR:DelphiFile") or mp.get_mpattribute("HSTR:Win32/DelphiFile")) then
  return mp.INFECTED
end
return mp.CLEAN
