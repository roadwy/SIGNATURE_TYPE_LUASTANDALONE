local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_FULL)
if L0_0 ~= "/tmp/4f4acd0b-bfa7-48bc-992f-386874448d0d-reportlowfitestfile-1.txt" then
  return mp.CLEAN
else
  mp.ReportLowfi(L0_0, 24039668)
end
return mp.INFECTED
