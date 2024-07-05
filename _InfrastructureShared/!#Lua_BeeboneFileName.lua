local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not (L0_0 > 307200) then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
elseif L0_0 < 14336 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2 = nil, nil, nil
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L2_2 = mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)
  L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)
end
if L2_2 == nil then
  L0_0 = mp.getfilename()
  L1_1 = L0_0:sub(-4)
else
  L1_1 = L2_2:sub(-4)
end
if L1_1 ~= ".exe" then
  return mp.CLEAN
end
if L2_2 == nil then
  L2_2 = L0_0:match("([^\\]+)$")
end
if (#L2_2 == 10 or #L2_2 == 9) and L0_0:find("\\Users\\", 1, true) and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") == L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") == L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") and L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") == L2_2:match("^%l?([^aeiou])([aeiou])([^aeiou])([aeiou])([^aeiou])%.exe") then
  return mp.INFECTED
end
return mp.CLEAN
