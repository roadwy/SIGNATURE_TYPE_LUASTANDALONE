local L0_0
L0_0 = isTamperProtectionOn
L0_0 = L0_0(false)
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_imagepath
  L0_0 = L0_0()
  if L0_0 then
    mp.ReportLowfi(L0_0, 1443100823)
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
