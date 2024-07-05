if not mp.get_mpattribute("SIGATTR:DelphiFile") then
  mp.set_mpattribute("SIGATTR:DelphiFile")
  mp.set_mpattribute("MpEnableCOM")
end
return mp.CLEAN
