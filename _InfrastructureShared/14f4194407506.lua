local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L0_0 = L2_2.utf8p1
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L0_0 = L2_2.utf8p1
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L1_1 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L0_0 = L2_2.utf8p1
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L1_1 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[7]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[7]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L0_0 = L2_2.utf8p1
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L1_1 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[8]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[8]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[8]
              L0_0 = L2_2.utf8p1
              L2_2 = this_sigattrlog
              L2_2 = L2_2[8]
              L1_1 = L2_2.utf8p2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[9]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[9]
              L2_2 = L2_2.utf8p2
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[9]
                L0_0 = L2_2.utf8p1
                L2_2 = this_sigattrlog
                L2_2 = L2_2[9]
                L1_1 = L2_2.utf8p2
              end
            else
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
                  L0_0 = L2_2.utf8p1
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[10]
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
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = 0
L4_4 = 0
repeat
  L5_5 = string
  L5_5 = L5_5.gsub
  L6_6 = L2_2
  L6_6 = L5_5(L6_6, "%%(%x%x)", function(A0_7)
    return string.char(tonumber(A0_7, 16))
  end)
  L4_4 = L6_6
  L2_2 = L5_5
  L3_3 = L3_3 + L4_4
until L4_4 == 0
L5_5 = L2_2
L6_6 = string
L6_6 = L6_6.gsub
L4_4, L6_6 = L5_5, L6_6(L5_5, "%$", "")
_ = L6_6
L3_3 = L3_3 + L4_4
L6_6 = string
L6_6 = L6_6.gsub
L4_4, L6_6 = L5_5, L6_6(L5_5, "{.-}", "")
_ = L6_6
L3_3 = L3_3 + L4_4
if L3_3 < 4 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L6_6 = L6_6(L2_2)
L2_2 = L6_6
L6_6 = string
L6_6 = L6_6.find
L6_6 = L6_6(L2_2, "j.-n.-d.-i.-:.-l.-d.-a.-p.-:")
if not L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = {}
L6_6["[" .. L0_0 .. "]"] = "[" .. L1_1 .. "]"
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L6_6)
return mp.INFECTED
