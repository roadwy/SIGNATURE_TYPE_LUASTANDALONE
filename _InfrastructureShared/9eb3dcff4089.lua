local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(this_sigattrlog[1].utf8p1, "\\([^\\]+)$")
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p1
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.match
      L1_1 = L1_1(this_sigattrlog[2].utf8p1, "\\([^\\]+)$")
      L0_0 = L1_1
    end
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  if string.find(L1_1, "%.xla") or string.find(L1_1, "personal.xlsb") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
