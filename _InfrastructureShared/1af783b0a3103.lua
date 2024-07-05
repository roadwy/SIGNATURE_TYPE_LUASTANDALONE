local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "HSTR:BrowserModifier:Win32/MeninchSP.A"
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 32 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = L1_1()
  L0_0 = L0_0(L1_1, L2_2, L1_1())
  L2_2 = L0_0
  L1_1 = L0_0.match
  L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
  if string.match(L2_2, "umbrella%d*_bkp%.exe") then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "do_exhaustivehstr_rescan"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "do_exhaustivehstr_rescan"
  L0_0(L1_1)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
