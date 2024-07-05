local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1(A0_25)
  local L1_26, L2_27, L3_28, L4_29, L5_30
  L1_26 = {}
  for L5_30 in L2_27(L3_28, L4_29) do
    table.insert(L1_26, L5_30)
  end
  for _FORV_6_ = 1, #L1_26 do
    if L1_26[_FORV_6_] == "/xml" then
      if L1_26[_FORV_6_ + 1] ~= nil then
      end
      break
    end
  end
  return L2_27
end
L2_2 = L1_1
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = string
  L9_9 = L9_9.find
  L10_10 = L2_2
  L11_11 = L8_8
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    function L9_9(A0_31)
      A0_31 = A0_31:gsub("<!%-%-(.-)%-%->", "")
      A0_31 = A0_31:gsub("<%?(.-)%?>", "")
      A0_31:gsub("<([/!]?)([%a_][%w-:_]*)%s*(/?>?)([^<]*)", function(A0_32, A1_33, A2_34, A3_35)
        local L4_36
        L4_36 = #A0_32
        if L4_36 == 0 then
          L4_36 = {}
          if #A2_34 == 0 then
            for _FORV_9_, _FORV_10_, _FORV_11_, _FORV_12_, _FORV_13_ in string.gmatch(A3_35, "(([%a_][%w-:_]*)%s*=%s*(['\"])(.-)%3%s*(/?>?))") do
              L4_36[_FORV_10_] = _FORV_12_
              if #_FORV_13_ ~= 0 then
                if _FORV_13_ == "/>" then
                  A3_35 = ""
                elseif _FORV_13_ == ">" then
                  A3_35 = A3_35:sub(0 + #_FORV_9_ + 1)
                else
                  error("invalid tag")
                end
                A2_34 = _FORV_13_
              end
            end
          end
          table.insert(_UPVALUE0_, A1_33)
          if not _UPVALUE1_ and A1_33 == "Command" then
            _UPVALUE1_ = true
          end
          if _UPVALUE1_ and A3_35 ~= "" then
            table.insert(_UPVALUE2_, A3_35)
          end
          if not next(L4_36) then
            L4_36 = nil
          end
          if A2_34:byte(1) == string.byte("/") then
            table.remove(_UPVALUE0_)
          end
        elseif A0_32 == "/" then
          L4_36 = _UPVALUE0_
          L4_36 = L4_36[#_UPVALUE0_]
          if L4_36 == A1_33 then
            L4_36 = table
            L4_36 = L4_36.remove
            L4_36(_UPVALUE0_)
          else
            L4_36 = error
            L4_36("invalid XML: mismatch closing tag")
          end
          L4_36 = _UPVALUE1_
          if L4_36 and A1_33 == "Command" then
            L4_36 = false
            _UPVALUE1_ = L4_36
          end
        elseif A0_32 == "!" then
          L4_36 = error
          L4_36("unsupported tag type")
        else
          L4_36 = error
          L4_36("parsing error")
        end
      end)
      return {}
    end
    L10_10 = sysio
    L10_10 = L10_10.GetFileSize
    L11_11 = L2_2
    L10_10 = L10_10(L11_11)
    if L10_10 > 50000 then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = tostring
    L12_12 = sysio
    L12_12 = L12_12.ReadFile
    L13_13 = L2_2
    L24_24 = L12_12(L13_13, L14_14, L15_15)
    L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L12_12(L13_13, L14_14, L15_15))
    L12_12 = L9_9
    L13_13 = L11_11
    L12_12 = L12_12(L13_13)
    function L13_13(A0_37)
      local L1_38, L2_39, L3_40, L4_41, L5_42
      L1_38 = {}
      for L5_42 in L2_39(L3_40, L4_41) do
        table.insert(L1_38, L5_42)
      end
      return L1_38
    end
    for L17_17, L18_18 in L14_14(L15_15) do
      L19_19 = L13_13
      L19_19 = L19_19(L20_20)
      for L23_23, L24_24 in L20_20(L21_21) do
        if string.match(L24_24, "^https?://") then
          return mp.INFECTED
        end
      end
    end
  end
end
return L4_4
