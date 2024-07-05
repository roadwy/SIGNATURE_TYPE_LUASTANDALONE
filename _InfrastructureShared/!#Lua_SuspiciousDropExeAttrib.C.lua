local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  local L2_5, L3_6, L4_7, L5_8
  if A0_3 == nil or A1_4 <= 0 or A1_4 > 128 then
    return L2_5
  end
  for L5_8 = 1, A1_4 do
    if string.byte(A0_3, L5_8) < 97 or string.byte(A0_3, L5_8) > 122 then
      return false
    end
  end
  return L2_5
end
IsStrLower = L0_0
function L0_0(A0_9, A1_10)
  return string.len(A0_9) == 8 and string.len(A1_10) == 12 and IsStrLower(A0_9, 8) == true and IsStrLower(A1_10, 8) == true
end
IsDofoilPath = L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_FILEPATH
    L1_1 = L1_1(L2_2)
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L1_1:sub(-25, -9))
    if L2_2 ~= "\\appdata\\roaming\\" then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L1_1:sub(-26, -9))
    elseif L2_2 == "\\application data\\" then
      L2_2 = mp
      L2_2 = L2_2.get_contextdata
      L2_2 = L2_2(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
      if L2_2 ~= 4294967295 then
        L2_2 = mp.bitand(L2_2, 3)
        if L2_2 == 3 then
          mp.set_mpattribute("Lua:SuspiciousDropExeAttrib.C")
        elseif L2_2 ~= 0 then
          if IsDofoilPath(L1_1:sub(-8), mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == true then
            mp.set_mpattribute("Lua:DofoilFilename.A")
          end
          mp.set_mpattribute("Lua:SuspiciousDropExeAttrib.D")
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
