local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "tiworker.exe", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "dismhost.exe", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "zscaler-windows", 1, true)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[10]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[11]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[11]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[11]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[12]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[12]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[12]
        L1_1 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[13]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[13]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[13]
          L1_1 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[14]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[14]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[14]
            L1_1 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[15]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[15]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[15]
              L1_1 = L2_2.utf8p2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[16]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[16]
              L2_2 = L2_2.utf8p2
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[16]
                L1_1 = L2_2.utf8p2
              end
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[17]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[17]
                L2_2 = L2_2.utf8p2
                if L2_2 ~= nil then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[17]
                  L1_1 = L2_2.utf8p2
                end
              else
                L2_2 = this_sigattrlog
                L2_2 = L2_2[18]
                L2_2 = L2_2.matched
                if L2_2 then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[18]
                  L2_2 = L2_2.utf8p2
                  if L2_2 ~= nil then
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[18]
                    L1_1 = L2_2.utf8p2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L1_1)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L1_1)
    L2_2 = MpCommon
    L2_2 = L2_2.AppendPersistContext
    L2_2(string.lower(L1_1), "MasqSuspRenameTargetL2", 3600)
    L2_2 = {
      "T1036.003:masquerading_target",
      "T1036.003:defenseevasion_target",
      "T1036.003:MasqSuspRename.I"
    }
    TrackFileAndTechnique(L1_1, L2_2)
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
