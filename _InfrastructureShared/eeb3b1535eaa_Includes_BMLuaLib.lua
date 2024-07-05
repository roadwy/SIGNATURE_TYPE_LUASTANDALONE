local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p2)
    L0_0 = L1_1
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = contains
L1_1 = L1_1(L0_0, "download")
if not L1_1 then
  L1_1 = contains
  L1_1 = L1_1(L0_0, "frombase64string")
else
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
end
else
  L1_1 = contains
  L1_1 = L1_1(L0_0, "%-[eE][ncodNCOD]*%s+", false)
  if L1_1 then
    L1_1 = NormalizeCmdline
    L1_1 = L1_1("powershell", L0_0)
    if contains(L1_1, "download") or contains(L1_1, "frombase64string") then
      bm_AddRelatedFileFromCommandLine(L0_0)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
