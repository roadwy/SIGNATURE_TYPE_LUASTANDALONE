local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -33
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= "\\msexchangemailboxreplication.exe" then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -23
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= "\\msexchangedelivery.exe" then
      L1_1 = string
      L1_1 = L1_1.sub
      L2_2 = L0_0
      L3_3 = -39
      L1_1 = L1_1(L2_2, L3_3)
    end
  elseif L1_1 == "\\msexchangemailboxreplicationworker.exe" then
    L1_1 = nil
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L1_1 = L2_2.utf8p1
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L1_1 = L2_2.utf8p1
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[3]
          L1_1 = L2_2.utf8p1
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[4]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[4]
            L1_1 = L2_2.utf8p1
          end
        end
      end
    end
    if L1_1 ~= nil then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, -4)
      L3_3 = "|.asp|aspx|ashx|asmx|"
      if string.find(L3_3, L2_2, 1, true) == nil then
        return mp.CLEAN
      end
      if sysio.IsFileExists(L1_1) then
        bm.add_related_file(L1_1)
        bm.add_threat_file(L1_1)
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
