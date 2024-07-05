local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("SCRIPT:Twitter!Cookie")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L0_0 = L0_0()
  if string.find(L0_0, "[Cc][oO][oO][kK][Ii][Ee][Ss]") ~= nil then
    mp.set_mpattribute("#Twitter!Cookie")
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
