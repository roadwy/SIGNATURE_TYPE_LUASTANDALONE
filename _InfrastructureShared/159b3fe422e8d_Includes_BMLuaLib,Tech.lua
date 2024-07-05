local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = "|.js|jse|vbs|vbe|"
L3_3 = {}
L3_3.SPAWNING_SCRIPT = 1
L3_3.COLORCPL_ABUSE = 2
L3_3.BITSADMIN_HTTP = 3
L4_4 = {}
L5_5 = L3_3.SPAWNING_SCRIPT
L4_4[L5_5] = function()
  local L0_6, L1_7, L2_8, L3_9, L4_10, L5_11, L6_12
  L0_6 = this_sigattrlog
  L0_6 = L0_6[1]
  L0_6 = L0_6.matched
  if L0_6 then
    L0_6 = this_sigattrlog
    L0_6 = L0_6[1]
    L0_6 = L0_6.utf8p2
    if L0_6 ~= nil then
      L0_6 = this_sigattrlog
      L0_6 = L0_6[1]
      L0_6 = L0_6.utf8p2
      _UPVALUE0_ = L0_6
      L0_6 = mp
      L0_6 = L0_6.GetExecutablesFromCommandLine
      L0_6 = L0_6(L1_7)
      for L4_10, L5_11 in L1_7(L2_8) do
        L6_12 = sysio
        L6_12 = L6_12.IsFileExists
        L6_12 = L6_12(L5_11)
        if L6_12 then
          L6_12 = string
          L6_12 = L6_12.lower
          L6_12 = L6_12(string.sub(L5_11, -3))
          if string.find(_UPVALUE1_, L6_12, 1, true) then
            return _UPVALUE2_.COLORCPL_ABUSE
          end
        end
      end
    end
  else
    L0_6 = mp
    L0_6 = L0_6.CLEAN
    return L0_6
  end
end
L5_5 = L3_3.COLORCPL_ABUSE
L4_4[L5_5] = function()
  local L0_13, L1_14
  L0_13 = this_sigattrlog
  L0_13 = L0_13[3]
  L0_13 = L0_13.matched
  if L0_13 then
    L0_13 = this_sigattrlog
    L0_13 = L0_13[3]
    L0_13 = L0_13.utf8p2
  else
    if L0_13 == nil then
      L0_13 = this_sigattrlog
      L0_13 = L0_13[4]
      L0_13 = L0_13.matched
      if L0_13 then
        L0_13 = this_sigattrlog
        L0_13 = L0_13[4]
        L0_13 = L0_13.utf8p2
      end
  end
  else
    if L0_13 ~= nil then
      L0_13 = _UPVALUE0_
      L0_13 = L0_13.BITSADMIN_HTTP
      return L0_13
  end
  else
    L0_13 = mp
    L0_13 = L0_13.CLEAN
    return L0_13
  end
end
L5_5 = L3_3.BITSADMIN_HTTP
L4_4[L5_5] = function()
  local L0_15, L1_16, L2_17, L3_18, L4_19, L5_20, L6_21, L7_22
  L0_15 = this_sigattrlog
  L0_15 = L0_15[5]
  L0_15 = L0_15.matched
  if L0_15 then
    L0_15 = this_sigattrlog
    L0_15 = L0_15[5]
    L0_15 = L0_15.utf8p2
    if L0_15 ~= nil then
      L0_15 = string
      L0_15 = L0_15.lower
      L1_16 = this_sigattrlog
      L1_16 = L1_16[5]
      L1_16 = L1_16.utf8p2
      L0_15 = L0_15(L1_16)
      _UPVALUE0_ = L0_15
      function L0_15(A0_23)
        local L1_24, L2_25, L3_26, L4_27, L5_28
        L1_24 = {}
        for L5_28 in L2_25(L3_26, L4_27) do
          table.insert(L1_24, L5_28)
        end
        return L1_24
      end
      L1_16 = _UPVALUE0_
      if L1_16 ~= nil then
        L1_16 = string
        L1_16 = L1_16.find
        L2_17 = _UPVALUE0_
        L1_16 = L1_16(L2_17, L3_18, L4_19, L5_20)
        if L1_16 then
          L1_16 = L0_15
          L2_17 = _UPVALUE0_
          L1_16 = L1_16(L2_17)
          L2_17 = {}
          L2_17.SIG_CONTEXT = "BM"
          L2_17.CONTENT_SOURCE = "COLORCPL_BITSADMIN_WSCRIPT"
          L2_17.PROCESS_CONTEXT = "bitsadmin.exe"
          L2_17.FILELESS = "true"
          L2_17.CMDLINE_URL = "true"
          for L6_21, L7_22 in L3_18(L4_19) do
            if string.match(L7_22, "^https?://") and SafeGetUrlReputation({L7_22}, L2_17, false, 3000).urls[L7_22] and SafeGetUrlReputation({L7_22}, L2_17, false, 3000).urls[L7_22].determination ~= 1 and SafeGetUrlReputation({L7_22}, L2_17, false, 3000).urls[L7_22].confidence ~= 90 then
              return mp.INFECTED
            end
          end
        end
      end
    end
  else
    L0_15 = mp
    L0_15 = L0_15.CLEAN
    return L0_15
  end
end
L5_5 = L3_3.SPAWNING_SCRIPT
while true do
  if L4_4[L5_5]() == mp.CLEAN or L4_4[L5_5]() == mp.INFECTED then
    break
  end
  L5_5 = L4_4[L5_5]()
end
return mp.CLEAN
