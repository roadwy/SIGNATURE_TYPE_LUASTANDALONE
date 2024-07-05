local L0_0, L1_1, L2_2, L3_3
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p2
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L2_2 = L3_3.utf8p2
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p2
      if L3_3 ~= nil then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L2_2 = L3_3.utf8p2
      end
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.utf8p2
        if L3_3 ~= nil then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[4]
          L2_2 = L3_3.utf8p2
        end
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L3_3 = L3_3.utf8p2
          if L3_3 ~= nil then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[5]
            L2_2 = L3_3.utf8p2
          end
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[6]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[6]
            L3_3 = L3_3.utf8p2
            if L3_3 ~= nil then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[6]
              L2_2 = L3_3.utf8p2
            end
          end
        end
      end
    end
  end
end
if L2_2 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[7]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.utf8p1
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[7]
      L0_0 = L3_3.utf8p1
    end
  end
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L2_2, "%s(/.+/.+)%s")
  L1_1 = L3_3
  if L0_0 and L1_1 then
    L3_3 = string
    L3_3 = L3_3.match
    L3_3 = L3_3(L0_0, "/.+/")
    if L3_3 and string.find(L2_2, L3_3, 1, true) and isTainted(L1_1, "remote_file_created_taint") then
      taint(L0_0, "remote_file_created_taint", 3600)
      TrackPidAndTechniqueBM("BM", "T1105", "CommandandControl_IngressToolTransfer_mt2023")
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
