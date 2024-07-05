local L0_0, L1_1, L2_2, L3_3
L1_1 = ""
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p1
    L3_3 = L3_3.lower
    L3_3 = L3_3(L3_3)
    L2_2 = L2_2(L3_3, "%%common_appdata%%\\(.*)")
    L3_3 = L2_2.find
    L3_3 = L3_3(L2_2, "\\", 1, true)
    if L3_3 == nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.utf8p1
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[4]
          L3_3 = L3_3.utf8p2
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[4]
            L1_1 = L3_3.utf8p1
            L3_3 = mp
            L0_0 = L3_3.INFECTED
          end
        end
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[2]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[2]
          L3_3 = L3_3.utf8p1
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[2]
            L3_3 = L3_3.utf8p2
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[2]
              L1_1 = L3_3.utf8p1
              L3_3 = mp
              L0_0 = L3_3.INFECTED
            end
          end
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[3]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[3]
            L3_3 = L3_3.utf8p1
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[3]
              L3_3 = L3_3.utf8p2
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[3]
                L1_1 = L3_3.utf8p1
                L3_3 = mp
                L0_0 = L3_3.INFECTED
              end
            end
          end
        end
      end
      L3_3 = mp
      L3_3 = L3_3.INFECTED
      if L0_0 == L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[1]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[1]
          L3_3 = L3_3.utf8p2
          if L3_3 then
            L3_3 = {}
            L3_3.type = L1_1
            L3_3.cmd = this_sigattrlog[1].utf8p2
            bm.add_related_string("ransom_meta", safeJsonSerialize(L3_3), bm.RelatedStringBMReport)
            bm.trigger_sig("GenericRansomware:AAA", safeJsonSerialize(L3_3))
            reportSessionInformation()
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
