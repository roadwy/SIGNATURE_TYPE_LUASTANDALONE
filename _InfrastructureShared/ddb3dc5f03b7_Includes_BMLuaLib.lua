local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
end
L1_1 = contains
L1_1 = L1_1(L0_0, {
  " /i ",
  " /q ",
  " -i ",
  " -q "
})
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "msiexec%.?e?x?e?\"?'?%s+(.*)$")
  if L1_1 == nil then
    return mp.CLEAN
  end
  if contains(L1_1, {".msi", ".exe"}) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
