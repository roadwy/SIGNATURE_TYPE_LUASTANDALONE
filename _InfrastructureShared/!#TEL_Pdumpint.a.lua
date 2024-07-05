local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("HSTR:Pdumpint.A")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L0_0 = L0_0()
  if string.find(L0_0, "pd.exe") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
