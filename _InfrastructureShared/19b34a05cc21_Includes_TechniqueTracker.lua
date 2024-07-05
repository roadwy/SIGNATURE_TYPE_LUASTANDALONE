local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L1_1 = {
      "T1105:ingress_tool",
      "T1105:BmRDPFileCopyIn"
    }
    TrackFileAndTechnique(L0_0, L1_1)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
