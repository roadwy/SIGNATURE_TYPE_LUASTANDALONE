local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("\\windows\\adfs\\", 1, true) or L0_0:find("\\windows\\microsoft.net\\assembly\\gac_msil\\microsoft.identityserver", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
