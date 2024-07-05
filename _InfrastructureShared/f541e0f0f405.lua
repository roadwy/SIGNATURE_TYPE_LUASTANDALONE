local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasstandardentry
  if not L0_0 then
    L0_0 = pehdr
    L0_0 = L0_0.Machine
  end
elseif L0_0 ~= 332 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 3145728 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[10]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[12]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.sub
    L1_1 = this_sigattrlog
    L1_1 = L1_1[10]
    L1_1 = L1_1.p1
    L0_0 = L0_0(L1_1, 5)
    L1_1 = this_sigattrlog
    L1_1 = L1_1[12]
    L1_1 = L1_1.p1
    if #L0_0 ~= #L1_1 then
      return mp.CLEAN
    end
    if string.find(L1_1, "\\", 1, true) ~= nil then
      return mp.CLEAN
    end
    if string.lower(string.sub(L0_0, 1, 1)) == string.lower(string.sub(L1_1, 1, 1)) or string.lower(string.sub(L0_0, 2)) ~= string.lower(string.sub(L1_1, 2)) or string.lower(string.sub(L0_0, -4)) ~= ".dll" then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
