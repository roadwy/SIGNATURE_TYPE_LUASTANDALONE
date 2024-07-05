if mp.get_mpattribute("SIGATTR:DelphiFile") and mp.get_mpattribute("SIGATTR:OpensBHOKey") then
  return mp.LOWFI
end
return mp.CLEAN
