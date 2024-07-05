local L0_0, L1_1, L2_2
L1_1 = "docker_create"
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(this_sigattrlog[2].utf8p1)
  L0_0 = string.match(L2_2, "/([0-9a-f]+)/parent$")
end
if L0_0 ~= nil then
  L2_2 = MpCommon
  L2_2 = L2_2.AppendPersistContextNoPath
  L2_2(L1_1, L0_0, 3600)
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
