local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(.+\\)([^\\]+)$")
if L1_1(L0_0, "(.+\\)([^\\]+)$") == nil or L1_1 == nil then
  return mp.CLEAN
end
if L1_1:len() < 6 then
  return mp.CLEAN
end
if string.sub(L1_1, -5) == "\\ucv\\" then
  mp.set_mpattribute("Lua:ContextFileNameRottentu.A")
end
return mp.CLEAN
