local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 24 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.match
L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
if L1_1 == nil or L2_2 == nil then
  return mp.CLEAN
end
if L1_1:len() > 20 and L2_2:len() > 3 and string.sub(L1_1, -10) == "\\temp\\low\\" then
  if string.sub(L2_2, -3) == ".js" then
    mp.set_mpattribute("Lua:ContextJSFileInTempLow")
  elseif string.sub(L2_2, -4) == ".vbs" then
    mp.set_mpattribute("Lua:ContextVBSFileInTempLow")
  end
end
return mp.CLEAN
