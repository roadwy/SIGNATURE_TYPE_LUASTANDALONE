local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = "rq_ServiceImagePaths"
    L1_1 = bm
    L1_1 = L1_1.get_imagepath
    L1_1 = L1_1()
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = L1_1.gsub
    L2_2 = L2_2(L1_1, "[.exe$|.sys$]", "")
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L1_1 = L2_2
    L2_2 = GetRollingQueueKeys
    L2_2 = L2_2(L0_0)
    if L2_2 == nil or type(L2_2) ~= "table" then
      return mp.CLEAN
    end
    for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
      if _FORV_7_:find(L1_1, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
