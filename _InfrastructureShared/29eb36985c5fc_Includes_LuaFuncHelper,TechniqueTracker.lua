local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p1
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.utf8p1
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L0_0 = L1_1.utf8p1
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.utf8p1
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L0_0 = L1_1.utf8p1
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[6]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.utf8p1
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L0_0 = L1_1.utf8p1
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[7]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L1_1 = L1_1.utf8p1
            if L1_1 ~= nil then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L0_0 = L1_1.utf8p1
            end
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[8]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              L1_1 = L1_1.utf8p1
              if L1_1 ~= nil then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[8]
                L0_0 = L1_1.utf8p1
              end
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[9]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[9]
                L1_1 = L1_1.utf8p1
                if L1_1 ~= nil then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[9]
                  L0_0 = L1_1.utf8p1
                end
              else
                L1_1 = this_sigattrlog
                L1_1 = L1_1[10]
                L1_1 = L1_1.matched
                if L1_1 then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[10]
                  L1_1 = L1_1.utf8p1
                  if L1_1 ~= nil then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[10]
                    L0_0 = L1_1.utf8p1
                  end
                else
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[11]
                  L1_1 = L1_1.matched
                  if L1_1 then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[11]
                    L1_1 = L1_1.utf8p1
                    if L1_1 ~= nil then
                      L1_1 = this_sigattrlog
                      L1_1 = L1_1[11]
                      L0_0 = L1_1.utf8p1
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
end
if L0_0 then
  function L1_1(A0_16)
    A0_16 = A0_16:gsub("<!%-%-(.-)%-%->", "")
    A0_16 = A0_16:gsub("<%?(.-)%?>", "")
    A0_16:gsub("<([/!]?)([%a_][%w-:_]*)%s*(/?>?)([^<]*)", function(A0_17, A1_18, A2_19, A3_20)
      local L4_21
      L4_21 = #A0_17
      if L4_21 == 0 then
        L4_21 = {}
        if #A2_19 == 0 then
          for _FORV_9_, _FORV_10_, _FORV_11_, _FORV_12_, _FORV_13_ in string.gmatch(A3_20, "(([%a_][%w-:_]*)%s*=%s*(['\"])(.-)%3%s*(/?>?))") do
            L4_21[_FORV_10_] = _FORV_12_
            if #_FORV_13_ ~= 0 then
              if _FORV_13_ == "/>" then
                A3_20 = ""
              elseif _FORV_13_ == ">" then
                A3_20 = A3_20:sub(0 + #_FORV_9_ + 1)
              else
                error("invalid tag")
              end
              A2_19 = _FORV_13_
            end
          end
        end
        table.insert(_UPVALUE0_, A1_18)
        if not _UPVALUE1_ and A1_18 == "Command" then
          _UPVALUE1_ = true
        end
        if _UPVALUE1_ and A3_20 ~= "" then
          table.insert(_UPVALUE2_, A3_20)
        end
        if not next(L4_21) then
          L4_21 = nil
        end
        if A2_19:byte(1) == string.byte("/") then
          table.remove(_UPVALUE0_)
        end
      elseif A0_17 == "/" then
        L4_21 = _UPVALUE0_
        L4_21 = L4_21[#_UPVALUE0_]
        if L4_21 == A1_18 then
          L4_21 = table
          L4_21 = L4_21.remove
          L4_21(_UPVALUE0_)
        else
          L4_21 = error
          L4_21("invalid XML: mismatch closing tag")
        end
        L4_21 = _UPVALUE1_
        if L4_21 and A1_18 == "Command" then
          L4_21 = false
          _UPVALUE1_ = L4_21
        end
      elseif A0_17 == "!" then
        L4_21 = error
        L4_21("unsupported tag type")
      else
        L4_21 = error
        L4_21("parsing error")
      end
    end)
    return {}
  end
  function L2_2(A0_22)
    local L1_23, L2_24, L3_25, L4_26, L5_27
    L1_23 = {}
    for L5_27 in L2_24(L3_25, L4_26) do
      table.insert(L1_23, L5_27)
    end
    return L1_23
  end
  L3_3 = {}
  L3_3.SIG_CONTEXT = "BM"
  L3_3.CONTENT_SOURCE = "SUSAPD-A"
  L3_3.PROCESS_CONTEXT = "powershell.exe"
  L3_3.FILELESS = "true"
  L3_3.CMDLINE_URL = "true"
  L4_4 = L1_1
  L4_4 = L4_4(L5_5)
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L2_2
    L10_10 = L10_10(L11_11)
    for L14_14, L15_15 in L11_11(L12_12) do
      if string.match(L15_15, "^https?://") and SafeGetUrlReputation({L15_15}, L3_3, false, 3000).urls[L15_15] and SafeGetUrlReputation({L15_15}, L3_3, false, 3000).urls[L15_15].determination == 2 and SafeGetUrlReputation({L15_15}, L3_3, false, 3000).urls[L15_15].confidence >= 60 then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
