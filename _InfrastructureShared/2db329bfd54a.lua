local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.ppid
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p2)
    if string.find(L1_1, ".dat", 1, true) and string.find(L1_1, "--", 1, true) and string.find(L1_1, "#1", 1, true) and string.find(L1_1, "=\"", 1, true) and L0_0 then
      bm.request_SMS(L0_0, "m")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
