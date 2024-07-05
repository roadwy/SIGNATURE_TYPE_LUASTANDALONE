local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[1]
      L0_0 = L0_0.utf8p2
      L1_1 = L0_0.match
      L1_1 = L1_1(L0_0, "RemoteIp:(.+):%d+")
      if L1_1 ~= nil and L1_1 ~= "" then
        L1_1 = string.lower(L1_1)
        TrackAttackerServer(L1_1)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
