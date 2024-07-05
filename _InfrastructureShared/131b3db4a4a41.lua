local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[2].utf8p1)
  L0_0 = string.match(L1_1, "/([0-9a-f]+)/init.pid$")
end
if L0_0 ~= nil then
  L1_1 = MpCommon
  L1_1 = L1_1.QueryPersistContextNoPath
  L1_1 = L1_1("docker_create", L0_0)
  if L1_1 then
    L1_1 = MpCommon
    L1_1 = L1_1.QueryPersistContextNoPath
    L1_1 = L1_1("docker_start", L0_0)
  end
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
