local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[7].utf8p1)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 48 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "\\\\admin$\\\\", 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\[a-z]%$\\")
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(MpCommon.PathToWin32Path(L0_0))
if L1_1 ~= nil and string.sub(L1_1, 0, 2) == "\\\\" then
  return mp.INFECTED
end
return mp.CLEAN
