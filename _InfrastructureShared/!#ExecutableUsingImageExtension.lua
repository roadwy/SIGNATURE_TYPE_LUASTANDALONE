local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L2_2 = L0_0
L1_1 = L0_0.find
L2_2 = L1_1(L2_2, "%.%w+$")
if nil == L1_1 then
  return mp.CLEAN
end
if true == false then
  return mp.CLEAN
end
if true then
  mp.set_mpattribute("Lua:ExecutableUsingImageExtension!dha")
else
  mp.set_mpattribute("Lua:ExecutableUsingImageExtension")
end
return mp.CLEAN
