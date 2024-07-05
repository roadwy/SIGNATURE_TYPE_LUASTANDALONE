local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
function L0_0(A0_19)
  local L1_20, L2_21, L3_22, L4_23, L5_24, L6_25, L7_26
  L1_20 = false
  L2_21 = false
  L3_22 = false
  L4_23 = false
  L5_24 = false
  L6_25 = false
  L7_26 = 0
  for _FORV_11_, _FORV_12_ in pairs(A0_19) do
    if L1_20 == false then
      if _FORV_12_.opcode == 49 and mp.bitand(_FORV_12_.flags, mp.DASM_FLAG_MODRM) ~= 0 and L1_20 == false and _FORV_12_.ilen == 3 and _FORV_12_.disp == 0 and _FORV_12_.immed == 0 then
        if _FORV_11_ ~= 1 then
          return false
        end
        L3_22 = true
        L1_20 = true
        L7_26 = _FORV_12_.modrm
      end
    elseif _FORV_12_.opcode == 247 and L3_22 == true and _FORV_12_.ilen == 3 and _FORV_11_ == 2 then
      if mp.bitand(_FORV_12_.modrm, 7) == mp.shr8(mp.bitand(L7_26, 56), 3) then
        L2_21 = true
      end
    elseif _FORV_12_.opcode == 139 and L3_22 == true then
      if L5_24 == true and mp.bitand(_FORV_12_.flags, mp.DASM_FLAG_DISP) ~= 0 and (_FORV_12_.disp == 16 or _FORV_12_.disp == 32 or _FORV_12_.disp == 48) and mp.bitand(_FORV_12_.modrm, 7) == mp.shr8(mp.bitand(L7_26, 56), 3) and _FORV_11_ <= 30 then
        L6_25 = true
      end
      if L4_23 == true and mp.bitand(_FORV_12_.flags, mp.DASM_FLAG_DISP) ~= 0 and mp.bitand(_FORV_12_.flags, mp.DASM_FLAG_MODRM) ~= 0 and _FORV_12_.disp == 24 and mp.bitand(_FORV_12_.modrm, 7) == mp.shr8(mp.bitand(L7_26, 56), 3) and _FORV_11_ <= 25 then
        L7_26 = _FORV_12_.modrm
        L5_24 = true
      end
      if _FORV_12_.prefx_cnt == 2 and _FORV_12_.disp == 96 and _FORV_12_.ilen == 5 and mp.bitand(_FORV_12_.flags, mp.DASM_FLAG_MODRM) ~= 0 and _FORV_11_ <= 20 then
        if L2_21 == true then
          L7_26 = _FORV_12_.modrm
          L4_23 = true
        elseif mp.bitand(_FORV_12_.modrm, 7) == mp.shr8(mp.bitand(L7_26, 56), 3) then
          L7_26 = _FORV_12_.modrm
          L4_23 = true
        end
      end
    elseif L6_25 == true and _FORV_12_.opcode == 255 and (_FORV_12_.jtype == 4 or _FORV_12_.jtype == 5) then
      return true
    end
  end
  return false
end
ParseInstrInfo = L0_0
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HSTR_CALLER_SMS
if L1_1 == L0_0 then
  L1_1 = mp
  L1_1 = L1_1.GetSMSLevel
  L1_1 = L1_1()
  L2_2 = mp
  L2_2 = L2_2.SMS_SCAN_ONCE_ADV
  if L1_1 ~= L2_2 then
    L2_2 = mp
    L2_2 = L2_2.SMS_SCAN_LOW_ADV
    if L1_1 ~= L2_2 then
      L2_2 = mp
      L2_2 = L2_2.SMS_SCAN_MED_ADV
      if L1_1 ~= L2_2 then
        L2_2 = mp
        L2_2 = L2_2.SMS_SCAN_HIGH_ADV
        if L1_1 ~= L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
    end
  end
  L2_2 = mp
  L2_2 = L2_2.GetSMSProcArchitecture
  L2_2 = L2_2()
  L3_3 = mp
  L3_3 = L3_3.GetSMSMemRanges
  L3_3 = L3_3()
  L4_4 = mp
  L4_4 = L4_4.hstr_full_log
  L4_4 = L4_4()
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.matched
    if L10_10 then
      L10_10 = L9_9.VA
      if L10_10 then
        L10_10 = mp
        L10_10 = L10_10.SMSVirtualQuery
        L11_11 = L9_9.VA
        L11_11 = L10_10(L11_11)
        if L10_10 ~= true then
          L12_12 = mp
          L12_12 = L12_12.CLEAN
          return L12_12
        end
        L12_12 = L11_11.prot
        if L12_12 == 64 then
          L12_12 = L11_11.state_type
          L13_13 = mp
          L13_13 = L13_13.bitor
          L14_14 = mp
          L14_14 = L14_14.SMS_MBI_COMMIT
          L15_15 = mp
          L15_15 = L15_15.SMS_MBI_PRIVATE
          L13_13 = L13_13(L14_14, L15_15)
        elseif L12_12 ~= L13_13 then
          L12_12 = mp
          L12_12 = L12_12.CLEAN
          return L12_12
        end
        L12_12 = L9_9.VA
        L13_13 = L11_11.size
        L14_14 = L11_11.found_ix
        L14_14 = L3_3[L14_14]
        L15_15 = L14_14.addr
        L16_16 = L14_14.size
        L15_15 = L15_15 + L16_16
        L16_16 = L13_13
        if L16_16 > 4096 then
          L16_16 = 4096
        end
        L17_17 = L12_12 + L16_16
        if L15_15 < L17_17 then
          L16_16 = L15_15 - L12_12
        end
        L17_17 = mp
        L17_17 = L17_17.ReadProcMem
        L18_18 = L12_12
        L17_17 = L17_17(L18_18, L16_16)
        if L17_17 ~= nil then
          L18_18 = mp
          L18_18 = L18_18.x86dasm
          L18_18 = L18_18(L2_2, L12_12, L17_17, L16_16, 150, L12_12, 0)
          if L18_18 ~= nil and ParseInstrInfo(L18_18) == true then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
