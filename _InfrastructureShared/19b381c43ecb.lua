local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = "file://"
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0 .. L1_1
    L1_1 = MpCommon
    L1_1 = L1_1.PathToWin32Path
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = "autoruninf://"
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L1_1, 2)
    L1_1 = L2_2 .. L3_3
    L2_2 = #L0_0
    if L2_2 > 1 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L0_0
      L2_2 = L2_2(L3_3, -1)
      if L2_2 ~= "\\" then
        L2_2 = L0_0
        L3_3 = "\\"
        L0_0 = L2_2 .. L3_3
      end
    end
    L2_2 = #L1_1
    if L2_2 > 1 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, -1)
      if L2_2 ~= "\\" then
        L2_2 = L1_1
        L3_3 = "\\"
        L1_1 = L2_2 .. L3_3
      end
    end
    L2_2 = L1_1
    L3_3 = "autorun.inf"
    L2_2 = L2_2 .. L3_3
    L3_3 = L0_0
    L3_3 = L3_3 .. "System Volume Information\\MountMgrRemoteDatabase"
    mp.TriggerScanResource("file", L2_2)
    mp.TriggerScanResource("file", L3_3)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
