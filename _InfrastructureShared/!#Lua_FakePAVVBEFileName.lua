local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, -4)
if L1_1 == ".vbe" then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
  if string.sub(L2_2, 1, 9) == "setup.exe" or string.sub(L2_2, 1, 5) == "hello" then
    mp.set_mpattribute("Lua:FakePAVVBEFileName")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
