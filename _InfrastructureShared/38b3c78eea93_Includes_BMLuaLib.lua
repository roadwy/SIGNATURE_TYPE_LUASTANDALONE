local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = contains
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = contains
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "%%localappdata:~",
  "%%programdata:~",
  "%%programfiles%(x86%):~",
  "%%programfiles:~",
  "%%programw6432:~",
  "%%psmodulepath:~",
  "%%public:~",
  "%%systemdrive:~",
  "%%systemroot:~",
  "%%temp:~",
  "%%tmp:~",
  "%%userprofile:~",
  "%%windir:~"
}
L2_2 = "%%allusersprofile:~"
L6_6 = "%%commonprogramw6432:~"
L7_7 = "%%comspec:~"
L2_2 = "%s*[%-%+]?%d+%s*,%s*[%-%+]?%d+%s*%%"
for L6_6, L7_7 in L3_3(L4_4) do
  if contains(L0_0, L7_7 .. L2_2, false) then
    bm.add_related_string("ShellEncode_cmdline", L0_0, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
return L3_3
