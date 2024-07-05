local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[1]
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[2]
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L0_0 = L1_1[3]
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L0_0 = L1_1[4]
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L0_0 = L1_1[5]
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L0_0 = L1_1[6]
            end
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L0_0 = L1_1[7]
              end
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[8]
                L1_1 = L1_1.matched
                if L1_1 then
                  L1_1 = this_sigattrlog
                  L0_0 = L1_1[8]
                end
              else
                L1_1 = mp
                L1_1 = L1_1.CLEAN
                return L1_1
              end
            end
          end
        end
      end
    end
  end
end
L1_1 = L0_0.matched
if L1_1 then
  L1_1 = L0_0.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.IsFriendlyProcess
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.format
L3_3 = "%s,address:%s,size:0"
L2_2 = L2_2(L3_3, L0_0.ppid, L1_1)
L3_3 = mp
L3_3 = L3_3.TriggerScanResource
L3_3("ems", L2_2)
L3_3 = string
L3_3 = L3_3.format
L3_3 = L3_3("susp_regions:%s", L0_0.ppid)
AppendToRollingQueue(L3_3, L1_1)
bm.trigger_sig("ScanSuspiciousRegions", L2_2, L0_0.ppid)
return mp.INFECTED
