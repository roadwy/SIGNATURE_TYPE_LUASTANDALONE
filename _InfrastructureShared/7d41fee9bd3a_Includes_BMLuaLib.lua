local L0_0, L1_1, L2_2, L3_3, L4_4
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L0_0 = L4_4.utf8p1
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L1_1 = L4_4.utf8p2
  end
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L0_0 = L4_4.utf8p1
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L1_1 = L4_4.utf8p2
    end
  end
end
L4_4 = contains
L4_4 = L4_4(L1_1, "/command/base64/")
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L4_4 = L4_4(L1_1, "Command%/Base64%/(.*)\"?'?}")
L2_2 = L4_4
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.Base64Decode
L4_4 = L4_4(L2_2)
L3_3 = L4_4
if L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L3_3, "curl", 1, true)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L3_3, "wget", 1, true)
    if not L4_4 then
      L4_4 = string
      L4_4 = L4_4.find
      L4_4 = L4_4(L3_3, "powershell", 1, true)
      if not L4_4 then
        L4_4 = string
        L4_4 = L4_4.find
        L4_4 = L4_4(L3_3, "python", 1, true)
        if not L4_4 then
          L4_4 = string
          L4_4 = L4_4.find
          L4_4 = L4_4(L3_3, "mshta", 1, true)
          if not L4_4 then
            L4_4 = string
            L4_4 = L4_4.find
            L4_4 = L4_4(L3_3, "certutil", 1, true)
            if not L4_4 then
              L4_4 = string
              L4_4 = L4_4.find
              L4_4 = L4_4(L3_3, "cmd", 1, true)
            end
          end
        end
      end
    end
  elseif L4_4 then
    L4_4 = {}
    L4_4["[" .. L0_0 .. "]"] = "[" .. L1_1 .. "]"
    nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L4_4)
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
