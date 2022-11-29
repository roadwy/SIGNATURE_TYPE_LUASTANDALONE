-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/HstrLuaLib 

-- params : ...
-- function num : 0
getTamperProtectionState = function()
  -- function num : 0_0
  local l_1_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  do
    if l_1_0 then
      local l_1_1 = (sysio.GetRegValueAsDword)(l_1_0, "TamperProtection")
      if l_1_1 then
        return l_1_1
      end
    end
    return nil
  end
end

isTamperProtectionOn = function()
  -- function num : 0_1
  local l_2_0 = getTamperProtectionState()
  if l_2_0 then
    if (mp.bitand)(l_2_0, 1) == 1 then
      return true, l_2_0
    else
      return false, l_2_0
    end
  end
  return nil
end

checkIfCertificateHit = function()
  -- function num : 0_2
  local l_3_0 = (mp.get_mpattributevalue)("RPF:MpCertVA")
  if l_3_0 == nil then
    return false
  end
  local l_3_1 = (mp.get_mpattributevalue)("RPF:MpCertSz")
  local l_3_2 = (mp.hstr_full_log)()
  for l_3_6,l_3_7 in pairs(l_3_2) do
    if l_3_7.matched and l_3_7.VA and l_3_0 < l_3_7.VA and l_3_7.VA < l_3_0 + l_3_1 then
      return true
    end
  end
  return false
end

isSafeToRead = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  if not l_4_1 or not l_4_2 then
    return false
  end
  if l_4_1 <= 0 or l_4_2 <= 0 then
    return false
  end
  local l_4_3, l_4_4 = (mp.SMSVirtualQuery)(l_4_1)
  if not l_4_3 then
    return false
  end
  local l_4_5 = l_4_0[l_4_4.found_ix]
  if not l_4_5 then
    return false
  end
  do
    local l_4_6 = (mp.bitand)(l_4_5.prot, 255)
    if l_4_6 ~= 32 and l_4_6 ~= 64 and l_4_6 ~= 128 and l_4_6 ~= 8 and l_4_6 ~= 4 then
      return false
    end
    do return l_4_5.addr < l_4_1 + l_4_2 and l_4_1 + l_4_2 <= l_4_5.addr + l_4_5.size end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

maceExtract_Qakbot = function()
  -- function num : 0_4
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return mp.INFECTED
  end
  local l_5_0 = ""
  local l_5_1 = ""
  local l_5_2 = ""
  local l_5_3 = ""
  local l_5_4 = (mp.GetSMSMemRanges)()
  local l_5_5 = function(l_6_0)
    -- function num : 0_4_0
    l_6_0 = (mp.bitand)(l_6_0, 4294967295)
    local l_6_1, l_6_2, l_6_3, l_6_4 = (mp.bsplit)(l_6_0, 8)
    return (string.char)(l_6_1) .. (string.char)(l_6_2) .. (string.char)(l_6_3) .. (string.char)(l_6_4)
  end

  local l_5_6 = function(l_7_0, l_7_1)
    -- function num : 0_4_1
    if #l_7_0 < l_7_1 + 16 then
      return nil
    end
    local l_7_2 = {}
    l_7_2.Characteristics = (mp.readu_u32)(l_7_0, l_7_1)
    l_7_2.Timestamp = (mp.readu_u32)(l_7_0, l_7_1 + 4)
    l_7_2.MajorVersion = (mp.readu_u16)(l_7_0, l_7_1 + 8)
    l_7_2.MinorVersion = (mp.readu_u16)(l_7_0, l_7_1 + 10)
    l_7_2.NumberOfNamedEntries = (mp.readu_u16)(l_7_0, l_7_1 + 12)
    l_7_2.NumberOfIdEntries = (mp.readu_u16)(l_7_0, l_7_1 + 14)
    return l_7_2
  end

  local l_5_7 = function(l_8_0, l_8_1)
    -- function num : 0_4_2
    if #l_8_0 < l_8_1 + 8 then
      return nil
    end
    local l_8_2 = (mp.readu_u32)(l_8_0, l_8_1)
    local l_8_3 = (mp.readu_u32)(l_8_0, l_8_1 + 4)
    local l_8_4 = {}
    l_8_4.Name = l_8_2
    l_8_4.OffsetToData = l_8_3
    l_8_4.NameOffset = (mp.bitand)(l_8_2, 2147483647)
    l_8_4.Pad = (mp.bitand)(l_8_2, 4294901760)
    l_8_4.Id = (mp.bitand)(l_8_2, 65535)
    l_8_4.DataIsDirectory = (mp.shr32)((mp.bitand)(l_8_3, 2147483648), 31)
    l_8_4.OffsetToDirectory = (mp.bitand)(l_8_3, 2147483647)
    return l_8_4
  end

  local l_5_8 = function(l_9_0, l_9_1)
    -- function num : 0_4_3
    if #l_9_0 < l_9_1 + 16 then
      return nil
    end
    local l_9_2 = {}
    l_9_2.OffsetToData = (mp.readu_u32)(l_9_0, l_9_1)
    l_9_2.Size = (mp.readu_u32)(l_9_0, l_9_1 + 4)
    l_9_2.CodePage = (mp.readu_u32)(l_9_0, l_9_1 + 8)
    l_9_2.Reserved = (mp.readu_u32)(l_9_0, l_9_1 + 12)
    return l_9_2
  end

  local l_5_10 = function(l_10_0, l_10_1, l_10_2, l_10_3, l_10_4)
    -- function num : 0_4_4 , upvalues : l_5_6, l_5_7, l_5_9, l_5_8
    local l_10_5 = 16
    local l_10_6 = 8
    local l_10_7 = l_5_6(l_10_0, l_10_1)
    if not l_10_7 then
      return 
    end
    local l_10_8 = l_10_7.NumberOfNamedEntries + l_10_7.NumberOfIdEntries
    if l_10_3 < l_10_4 then
      for l_10_12 = 0, l_10_8 - 1 do
        local l_10_13 = l_10_1 + l_10_5 + l_10_12 * l_10_6
        local l_10_14 = l_5_7(l_10_0, l_10_13)
        if not l_10_14 then
          return 
        end
        if l_10_14.DataIsDirectory == 1 then
          l_5_9(l_10_0, l_10_14.OffsetToDirectory + 1, l_10_2, l_10_3 + 1, l_10_4)
        else
          local l_10_15 = l_5_8(l_10_0, l_10_14.OffsetToData + 1)
          if not l_10_15 then
            return 
          end
          ;
          (table.insert)(l_10_2, l_10_15)
        end
      end
    end
  end

  local l_5_12 = function(l_11_0)
    -- function num : 0_4_5
    local l_11_1 = {}
    local l_11_2 = (string.byte)(l_11_0, 61) + 1
    if #l_11_0 < l_11_2 + 2 then
      return nil
    end
    if (string.byte)(l_11_0, l_11_2) ~= 80 or (string.byte)(l_11_0, l_11_2 + 1) ~= 69 then
      return nil
    end
    if #l_11_0 < l_11_2 + 6 then
      return nil
    end
    local l_11_3 = (mp.readu_u16)(l_11_0, l_11_2 + 6)
    if l_11_3 > 10 then
      return nil
    end
    if #l_11_0 < l_11_2 + 22 then
      return nil
    end
    local l_11_4 = (mp.readu_u16)(l_11_0, l_11_2 + 20)
    local l_11_5 = l_11_2 + 24
    local l_11_6 = l_11_5 + l_11_4
    for l_11_10 = 0, l_11_3 - 1 do
      local l_11_11 = l_11_6 + l_11_10 * 40
      if #l_11_0 < l_11_11 + 40 then
        return nil
      end
      local l_11_12 = {}
      l_11_12.Name = l_11_0:sub(l_11_11, l_11_11 + 7)
      l_11_12.Misc = (mp.readu_u32)(l_11_0, l_11_11 + 8)
      l_11_12.VirtualAddress = (mp.readu_u32)(l_11_0, l_11_11 + 12)
      l_11_12.SizeOfRawData = (mp.readu_u32)(l_11_0, l_11_11 + 16)
      l_11_12.PointerToRawData = (mp.readu_u32)(l_11_0, l_11_11 + 20)
      l_11_12.PointerToRelocations = (mp.readu_u32)(l_11_0, l_11_11 + 24)
      l_11_12.PointerToLineNumbers = (mp.readu_u32)(l_11_0, l_11_11 + 28)
      l_11_12.NumberOfRelocations = (mp.readu_u16)(l_11_0, l_11_11 + 32)
      l_11_12.NumberOfLineNumbers = (mp.readu_u16)(l_11_0, l_11_11 + 34)
      l_11_12.Characteristics = (mp.readu_u32)(l_11_0, l_11_11 + 36)
      ;
      (table.insert)(l_11_1, l_11_12)
    end
    return l_11_1
  end

  for l_5_16,l_5_17 in ipairs((mp.hstr_full_log)()) do
    local l_5_13, l_5_14 = function(l_12_0, l_12_1)
    -- function num : 0_4_6 , upvalues : l_5_4
    if not l_12_0 or not l_12_1 then
      return false
    end
    if l_12_0 <= 0 or l_12_1 <= 0 then
      return false
    end
    local l_12_2, l_12_3 = (mp.SMSVirtualQuery)(l_12_0)
    if not l_12_2 then
      return false
    end
    do
      local l_12_4 = l_5_4[l_12_3.found_ix]
      if not l_12_4 then
        return false
      end
      do return l_12_4.addr < l_12_0 + l_12_1 and l_12_0 + l_12_1 < l_12_4.addr + l_12_4.size end
      -- DECOMPILER ERROR: 1 unprocessed JMP targets
    end
  end

    -- DECOMPILER ERROR at PC36: Confused about usage of register: R17 in 'UnsetPending'

    if R17_PC36.matched then
      if not l_5_13(R17_PC36.VA, 4) then
        return mp.INFECTED
      end
      if (mp.readu_u16)((mp.ReadProcMem)(R17_PC36.VA, 4), 1) ~= 3 then
        local l_5_20, l_5_21 = nil
        if not (mp.SMSVirtualQuery)(l_5_19.VA) then
          return mp.INFECTED
        end
        local l_5_22 = nil
        -- DECOMPILER ERROR at PC74: Confused about usage of register: R22 in 'UnsetPending'

        if l_5_4[(l_5_19.VA).found_ix] then
          if not l_5_13((l_5_4[(l_5_19.VA).found_ix]).addr, 16) then
            return mp.INFECTED
          end
          -- DECOMPILER ERROR at PC84: Confused about usage of register: R22 in 'UnsetPending'

          local l_5_23 = nil
          -- DECOMPILER ERROR at PC102: Confused about usage of register: R22 in 'UnsetPending'

          if (string.byte)((mp.ReadProcMem)((l_5_4[(l_5_19.VA).found_ix]).addr, 16), 1) == 77 and (string.byte)((mp.ReadProcMem)((l_5_4[(l_5_19.VA).found_ix]).addr, 16), 2) == 90 then
            if not l_5_13((l_5_4[(l_5_19.VA).found_ix]).addr, 1280) then
              return mp.INFECTED
            end
            -- DECOMPILER ERROR at PC112: Confused about usage of register: R22 in 'UnsetPending'

            do
              do
                local l_5_24 = nil
                if not l_5_12((mp.ReadProcMem)((l_5_4[(l_5_19.VA).found_ix]).addr, 1280)) then
                  return mp.INFECTED
                end
                for l_5_28,l_5_29 in ipairs(l_5_12((mp.ReadProcMem)((l_5_4[(l_5_19.VA).found_ix]).addr, 1280))) do
                  local l_5_25, l_5_26 = nil
                  -- DECOMPILER ERROR at PC128: Confused about usage of register: R29 in 'UnsetPending'

                  if R29_PC128.Name == ".data\000\000\000" then
                    if not l_5_13(l_5_24.addr + R29_PC128.VirtualAddress, 8) then
                      return mp.INFECTED
                    end
                    if (mp.readu_u32)((mp.ReadProcMem)(l_5_24.addr + R29_PC128.VirtualAddress, 8), 1) > 65536 or (mp.readu_u32)((mp.ReadProcMem)(l_5_24.addr + R29_PC128.VirtualAddress, 8), 5) >= 65536 then
                      return mp.INFECTED
                    end
                    if l_5_0 == "" and l_5_1 == "" then
                      l_5_0 = ((mp.ReadProcMem)(l_5_24.addr + R29_PC128.VirtualAddress, 8)):sub(1, 4)
                      l_5_1 = ((mp.ReadProcMem)(l_5_24.addr + R29_PC128.VirtualAddress, 8)):sub(5, 8)
                    end
                  else
                    do
                      if R29_PC128.Name == ".rsrc\000\000\000" then
                        if R29_PC128.SizeOfRawData > 4096 then
                          return mp.INFECTED
                        end
                        if not l_5_13(l_5_24.addr + R29_PC128.VirtualAddress, R29_PC128.SizeOfRawData) then
                          return mp.INFECTED
                        end
                        local l_5_31 = nil
                        l_5_10((mp.ReadProcMem)(l_5_24.addr + R29_PC128.VirtualAddress, R29_PC128.SizeOfRawData), 1, {}, 0, 10)
                        -- DECOMPILER ERROR at PC216: Confused about usage of register: R31 in 'UnsetPending'

                        if #{} ~= 2 then
                          return mp.INFECTED
                        end
                        -- DECOMPILER ERROR at PC223: Confused about usage of register: R31 in 'UnsetPending'

                        for l_5_36,l_5_37 in ipairs({}) do
                          local l_5_33, l_5_34 = nil
                          -- DECOMPILER ERROR at PC227: Confused about usage of register: R36 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC231: Confused about usage of register: R36 in 'UnsetPending'

                          if not l_5_13(l_5_24.addr + (0).OffsetToData, (0).Size) then
                            return mp.INFECTED
                          end
                          -- DECOMPILER ERROR at PC240: Confused about usage of register: R37 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC241: Confused about usage of register: R36 in 'UnsetPending'

                          if l_5_2 == "" then
                            l_5_2 = (mp.ReadProcMem)(l_5_24.addr + (0).OffsetToData, (0).Size)
                          else
                            if l_5_3 == "" then
                              l_5_3 = (mp.ReadProcMem)(l_5_24.addr + (0).OffsetToData, (0).Size)
                            end
                          end
                        end
                      end
                      do
                        -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                      end
                    end
                  end
                end
                do break end
                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC255: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
  if l_5_0 ~= "" and l_5_1 ~= "" and l_5_2 ~= "" and l_5_3 ~= "" then
    local l_5_40 = "QAKB" .. l_5_0 .. l_5_1 .. l_5_5(#l_5_2) .. l_5_2 .. l_5_5(#l_5_3) .. l_5_3
    l_5_40 = (MpCommon.Base64Encode)(l_5_40)
    local l_5_41 = "mace_qakbot"
    AppendToRollingQueue(l_5_41, l_5_40, 0, 60, 32, 1)
  end
  do
    return mp.INFECTED
  end
end

maceExtract_ZLoader = function()
  -- function num : 0_5
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return mp.INFECTED
  end
  local l_6_0 = function(l_7_0)
    -- function num : 0_5_0
    l_7_0 = (mp.bitand)(l_7_0, 4294967295)
    local l_7_1, l_7_2, l_7_3, l_7_4 = (mp.bsplit)(l_7_0, 8)
    return (string.char)(l_7_1) .. (string.char)(l_7_2) .. (string.char)(l_7_3) .. (string.char)(l_7_4)
  end

  local l_6_1 = function(l_8_0, l_8_1)
    -- function num : 0_5_1
    local l_8_2 = ""
    for l_8_6 = l_8_1, #l_8_0 do
      if (string.byte)(l_8_0, l_8_6) >= 32 then
        do
          if (string.byte)(l_8_0, l_8_6) > 126 then
            break
          end
          l_8_2 = l_8_2 .. (string.char)((string.byte)(l_8_0, l_8_6))
          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    return l_8_2
  end

  local l_6_2 = (mp.hstr_full_log)()
  local l_6_3 = ""
  for l_6_7,l_6_8 in ipairs(l_6_2) do
    if l_6_8.matched then
      local l_6_9 = (mp.ReadProcMem)(l_6_8.VA, 80)
      if not l_6_9 then
        return mp.INFECTED
      end
      if (mp.readu_u16)(l_6_9, 1) == 50307 then
        local l_6_10 = "\\x83\\xC4\\x04\\x84\\xC0\\x74.\\xE8....\\xE8....\\xE8....\\xE8....[\\x00-\\x67\\x69-\\xFF]+\\x68(....)\\x68(....)"
        local l_6_11, l_6_12, l_6_13 = (MpCommon.BinaryRegExpSearch)(l_6_10, l_6_9)
        if l_6_11 then
          l_6_12 = (mp.readu_u32)(l_6_12, 1)
          l_6_13 = (mp.readu_u32)(l_6_13, 1)
          local l_6_14, l_6_15 = (mp.bsplit)(l_6_12, 16)
          local l_6_16, l_6_17 = (mp.bsplit)(l_6_13, 16)
          if l_6_15 ~= l_6_17 then
            return mp.INFECTED
          end
          local l_6_18 = (mp.ReadProcMem)(l_6_12, 48)
          if not l_6_18 then
            return mp.INFECTED
          end
          local l_6_19 = l_6_1(l_6_18, 1)
          if #l_6_19 == 0 or #l_6_19 == 48 then
            return mp.INFECTED
          end
          local l_6_20 = (mp.ReadProcMem)(l_6_13, 880)
          if not l_6_20 then
            return mp.INFECTED
          end
          l_6_3 = "ZLOA" .. l_6_0(#l_6_19) .. l_6_19 .. l_6_0(#l_6_20) .. l_6_20
          l_6_3 = (MpCommon.Base64Encode)(l_6_3)
        end
        break
      end
    end
  end
  do
    do
      if l_6_3 ~= "" then
        local l_6_21 = "mace_zloader"
        AppendToRollingQueue(l_6_21, l_6_3, 0, 60, 32, 1)
      end
      return mp.INFECTED
    end
  end
end

maceExtract_CobaltStrike = function(l_7_0)
  -- function num : 0_6
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return 
  end
  local l_7_4 = (mp.GetSMSProcArchitecture)() == mp.SMS_PROC_ARCH_X64
  local l_7_5 = (mp.GetScannedPPID)()
  local l_7_8 = (mp.GetSMSMemRanges)()
  local l_7_9 = function(l_8_0, l_8_1)
    -- function num : 0_6_0 , upvalues : l_7_6
    if not l_8_0 or not l_8_1 then
      return false
    end
    if l_8_0 <= 0 or l_8_1 <= 0 then
      return false
    end
    local l_8_2, l_8_3 = (mp.SMSVirtualQuery)(l_8_0)
    if not l_8_2 then
      return false
    end
    local l_8_4 = l_7_6[l_8_3.found_ix]
    if not l_8_4 then
      return false
    end
    do
      local l_8_5 = (mp.bitand)(l_8_4.prot, 255)
      if l_8_5 ~= 32 and l_8_5 ~= 64 and l_8_5 ~= 128 and l_8_5 ~= 8 and l_8_5 ~= 4 then
        return false
      end
      do return l_8_4.addr < l_8_0 + l_8_1 and l_8_0 + l_8_1 <= l_8_4.addr + l_8_4.size end
      -- DECOMPILER ERROR: 1 unprocessed JMP targets
    end
  end

  local l_7_10 = function(l_9_0, l_9_1)
    -- function num : 0_6_1 , upvalues : l_7_7
    if not l_7_7(l_9_0, l_9_1) then
      return nil
    end
    local l_9_2 = mp.ReadProcMem
    local l_9_3 = l_9_0
    do
      local l_9_4 = l_9_1
      do return l_9_2(l_9_3, l_9_4) end
      -- DECOMPILER ERROR at PC14: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end

  local l_7_13 = function(l_10_0)
    -- function num : 0_6_2
    local l_10_1 = ""
    local l_10_2 = 6
    local l_10_3 = 0
    if not l_10_0 or #l_10_0 == 0 then
      return -1
    end
    if (string.byte)(l_10_0, 1) == 0 then
      l_10_1 = "([\\x00-\\xFF]+)\\x00\\x25\\x00\\x02\\x00\\x04"
    else
      if (string.byte)(l_10_0, 1) == 46 then
        l_10_1 = "([\\x00-\\xFF]+)\\x2e\\x0b\\x2e\\x2c\\x2e\\x2a"
        l_10_3 = 46
      else
        if (string.byte)(l_10_0, 1) == 105 then
          l_10_1 = "([\\x00-\\xFF]+)\\x69\\x4c\\x69\\x6b\\x69\\x6d"
          l_10_3 = 105
        else
          if (string.byte)(l_10_0, 1) == 78 then
            l_10_1 = "([\\x00-\\xFF]+)\\x4e\\x6b\\x4e\\x4c\\x4e\\x4a"
            l_10_3 = 78
          else
            return -1
          end
        end
      end
    end
    if l_10_1 == "" then
      return -1
    end
    local l_10_4, l_10_5 = (MpCommon.BinaryRegExpSearch)(l_10_1, l_10_0)
    if not l_10_4 then
      return -1
    end
    local l_10_6 = #l_10_5 + l_10_2 + 1
    if #l_10_0 < l_10_6 + 4 then
      return -1
    end
    do
      local l_10_11, l_10_12, l_10_13, l_10_14 = (string.char)((mp.bitxor)((string.byte)(l_10_0, l_10_6 + 3), l_10_3)), (string.char)((mp.bitxor)((string.byte)(l_10_0, l_10_6 + 2), l_10_3)), (string.char)((mp.bitxor)((string.byte)(l_10_0, l_10_6 + 1), l_10_3)), string.char
      l_10_14 = l_10_14((mp.bitxor)((string.byte)(l_10_0, l_10_6 + 0), l_10_3))
      l_10_11 = l_10_11 .. l_10_12 .. l_10_13 .. l_10_14
      local l_10_7 = nil
      l_10_12 = mp
      l_10_12 = l_10_12.readu_u32
      local l_10_8 = nil
      l_10_13 = l_10_11
      local l_10_9 = nil
      l_10_14 = 1
      local l_10_10 = nil
      do return l_10_12(l_10_13, l_10_14) end
      -- DECOMPILER ERROR at PC128: Confused about usage of register R9 for local variables in 'ReleaseLocals'

    end
  end

  local __get_c2server = function(l_11_0)
    -- function num : 0_6_3
    local l_11_1 = ""
    local l_11_2 = 6
    local l_11_3 = 0
    if not l_11_0 or #l_11_0 == 0 then
      return nil
    end
    if (string.byte)(l_11_0, 1) == 0 then
      l_11_1 = "([\\x00-\\xFF]+)\\x00\\x08\\x00\\x03\\x01\\x00"
    else
      if (string.byte)(l_11_0, 1) == 46 then
        l_11_1 = "([\\x00-\\xFF]+)\\x2e\\x26\\x2e\\x2d\\x2f\\x2e"
        l_11_3 = 46
      else
        if (string.byte)(l_11_0, 1) == 105 then
          l_11_1 = "([\\x00-\\xFF]+)\\x69\\x61\\x69\\x6a\\x68\\x69"
          l_11_3 = 105
        else
          if (string.byte)(l_11_0, 1) == 78 then
            l_11_1 = "([\\x00-\\xFF]+)\\x4e\\x46\\x4e\\x4d\\x4f\\x4e"
            l_11_3 = 78
          else
            return nil
          end
        end
      end
    end
    if l_11_1 == "" then
      return nil
    end
    local l_11_4, l_11_5 = (MpCommon.BinaryRegExpSearch)(l_11_1, l_11_0)
    if not l_11_4 then
      return nil
    end
    local l_11_6 = #l_11_5 + l_11_2 + 1
    if #l_11_0 < l_11_6 + 4 then
      return nil
    end
    local l_11_7 = ""
    for l_11_11 = l_11_6, #l_11_0 do
      local l_11_12 = (mp.bitxor)((string.byte)(l_11_0, l_11_11), l_11_3)
      if l_11_12 == 0 then
        break
      end
      l_11_7 = l_11_7 .. (string.char)(l_11_12)
    end
    do
      return l_11_7
    end
  end

  local l_7_15 = function(l_12_0, l_12_1)
    -- function num : 0_6_4
    -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC17: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC23: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC29: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC47: Overwrote pending register: R9 in 'AssignReg'

    return nil + nil * 256 + nil * 65536 + nil * 16777216 + nil * 4294967296 + nil * 1099511627776 + nil * 2.8147497671066e+14 + nil * 7.2057594037928e+16
  end

  do
    if not l_7_0 then
      local l_7_16 = function(l_13_0, l_13_1, l_13_2)
    -- function num : 0_6_5 , upvalues : l_7_8, l_7_11
    local l_13_3 = ""
    local l_13_4 = l_7_8(l_13_0, l_13_1 * 128)
    if not l_13_4 then
      return ""
    end
    local l_13_5 = 1
    local l_13_6 = 2
    local l_13_7 = 3
    local l_13_8 = {}
    local l_13_9 = {}
    l_13_9.pos = 1
    l_13_9.fieldType = l_13_5
    l_13_9.size = 2
    local l_13_10 = {}
    l_13_10.pos = 2
    l_13_10.fieldType = l_13_5
    l_13_10.size = 2
    local l_13_11 = {}
    l_13_11.pos = 3
    l_13_11.fieldType = l_13_6
    l_13_11.size = 4
    local l_13_12 = {}
    l_13_12.pos = 4
    l_13_12.fieldType = l_13_6
    l_13_12.size = 4
    local l_13_13 = {}
    l_13_13.pos = 5
    l_13_13.fieldType = l_13_5
    l_13_13.size = 2
    local l_13_14 = {}
    l_13_14.pos = 6
    l_13_14.fieldType = l_13_5
    l_13_14.size = 2
    local l_13_15 = {}
    l_13_15.pos = 7
    l_13_15.fieldType = l_13_7
    l_13_15.size = 256
    local l_13_16 = {}
    l_13_16.pos = 8
    l_13_16.fieldType = l_13_7
    l_13_16.size = 256
    local l_13_17 = {}
    l_13_17.pos = 9
    l_13_17.fieldType = l_13_7
    l_13_17.size = 128
    local l_13_18 = {}
    l_13_18.pos = 10
    l_13_18.fieldType = l_13_7
    l_13_18.size = 64
    local l_13_19 = {}
    l_13_19.pos = 11
    l_13_19.fieldType = l_13_7
    l_13_19.size = 256
    local l_13_20 = {}
    l_13_20.pos = 12
    l_13_20.fieldType = l_13_7
    l_13_20.size = 256
    local l_13_21 = {}
    l_13_21.pos = 13
    l_13_21.fieldType = l_13_7
    l_13_21.size = 256
    local l_13_22 = {}
    l_13_22.pos = 14
    l_13_22.fieldType = l_13_7
    l_13_22.size = 16
    local l_13_23 = {}
    l_13_23.pos = 15
    l_13_23.fieldType = l_13_7
    l_13_23.size = 128
    local l_13_24 = {}
    l_13_24.pos = 19
    l_13_24.fieldType = l_13_6
    l_13_24.size = 4
    local l_13_25 = {}
    l_13_25.pos = 20
    l_13_25.fieldType = l_13_6
    l_13_25.size = 4
    local l_13_26 = {}
    l_13_26.pos = 21
    l_13_26.fieldType = l_13_7
    l_13_26.size = 256
    local l_13_27 = {}
    l_13_27.pos = 22
    l_13_27.fieldType = l_13_5
    l_13_27.size = 2
    local l_13_28 = {}
    l_13_28.pos = 23
    l_13_28.fieldType = l_13_7
    l_13_28.size = 128
    local l_13_29 = {}
    l_13_29.pos = 24
    l_13_29.fieldType = l_13_7
    l_13_29.size = 128
    local l_13_30 = {}
    l_13_30.pos = 25
    l_13_30.fieldType = l_13_7
    l_13_30.size = 6144
    local l_13_31 = {}
    l_13_31.pos = 26
    l_13_31.fieldType = l_13_7
    l_13_31.size = 16
    local l_13_32 = {}
    l_13_32.pos = 27
    l_13_32.fieldType = l_13_7
    l_13_32.size = 16
    local l_13_33 = {}
    l_13_33.pos = 28
    l_13_33.fieldType = l_13_6
    l_13_33.size = 4
    local l_13_34 = {}
    l_13_34.pos = 29
    l_13_34.fieldType = l_13_7
    l_13_34.size = 64
    local l_13_35 = {}
    l_13_35.pos = 30
    l_13_35.fieldType = l_13_7
    l_13_35.size = 64
    local l_13_36 = {}
    l_13_36.pos = 31
    l_13_36.fieldType = l_13_6
    l_13_36.size = 4
    local l_13_37 = {}
    l_13_37.pos = 32
    l_13_37.fieldType = l_13_7
    l_13_37.size = 128
    local l_13_38 = {}
    l_13_38.pos = 33
    l_13_38.fieldType = l_13_7
    l_13_38.size = 64
    local l_13_39 = {}
    l_13_39.pos = 34
    l_13_39.fieldType = l_13_7
    l_13_39.size = 64
    local l_13_40 = {}
    l_13_40.pos = 35
    l_13_40.fieldType = l_13_5
    l_13_40.size = 2
    local l_13_41 = {}
    l_13_41.pos = 37
    l_13_41.fieldType = l_13_6
    l_13_41.size = 4
    local l_13_42 = {}
    l_13_42.pos = 38
    l_13_42.fieldType = l_13_5
    l_13_42.size = 2
    local l_13_43 = {}
    l_13_43.pos = 39
    l_13_43.fieldType = l_13_5
    l_13_43.size = 2
    local l_13_44 = {}
    l_13_44.pos = 40
    l_13_44.fieldType = l_13_6
    l_13_44.size = 4
    local l_13_45 = {}
    l_13_45.pos = 43
    l_13_45.fieldType = l_13_5
    l_13_45.size = 2
    local l_13_46 = {}
    l_13_46.pos = 44
    l_13_46.fieldType = l_13_5
    l_13_46.size = 2
    local l_13_47 = {}
    l_13_47.pos = 45
    l_13_47.fieldType = l_13_6
    l_13_47.size = 4
    local l_13_48 = {}
    l_13_48.pos = 46
    l_13_48.fieldType = l_13_7
    l_13_48.size = 256
    local l_13_49 = {}
    l_13_49.pos = 47
    l_13_49.fieldType = l_13_7
    l_13_49.size = 256
    local l_13_50 = {}
    l_13_50.pos = 51
    l_13_50.fieldType = l_13_7
    l_13_50.size = 128
    local l_13_51 = {}
    l_13_51.pos = 52
    l_13_51.fieldType = l_13_5
    l_13_51.size = 2
    local l_13_52 = {}
    l_13_52.pos = 50
    l_13_52.fieldType = l_13_5
    l_13_52.size = 2
    do
      local l_13_53 = {}
      l_13_53.pos = 54
      l_13_53.fieldType = l_13_7
      l_13_53.size = 128
      -- DECOMPILER ERROR at PC193: No list found for R8 , SetList fails

      l_13_9 = ipairs
      l_13_10 = l_13_8
      l_13_9 = l_13_9(l_13_10)
      for l_13_12,l_13_13 in l_13_9 do
        l_13_14 = mp
        l_13_14 = l_13_14.bsplit
        l_13_15 = l_13_13.size
        l_13_16 = 8
        l_13_14 = l_13_14(l_13_15, l_13_16)
        l_13_16 = l_13_13.pos
        l_13_16 = l_13_16 * l_13_2
        l_13_16 = l_13_16 + 1
        l_13_17 = l_13_16 + l_13_1
        l_13_18 = "\000"
        l_13_19 = string
        l_13_19 = l_13_19.char
        l_13_20 = l_13_13.pos
        l_13_19 = l_13_19(l_13_20)
        l_13_20 = "\000"
        l_13_21 = string
        l_13_21 = l_13_21.char
        l_13_22 = l_13_13.fieldType
        l_13_21 = l_13_21(l_13_22)
        l_13_22 = string
        l_13_22 = l_13_22.char
        l_13_23 = 
        l_13_22 = l_13_22(l_13_23)
        l_13_23 = string
        l_13_23 = l_13_23.char
        l_13_24 = l_13_14
        l_13_23 = l_13_23(l_13_24)
        l_13_18 = l_13_18 .. l_13_19 .. l_13_20 .. l_13_21 .. l_13_22 .. l_13_23
        l_13_19 = string
        l_13_19 = l_13_19.byte
        l_13_20 = l_13_4
        l_13_21 = l_13_16
        l_13_19 = l_13_19(l_13_20, l_13_21)
        l_13_20 = l_13_13.fieldType
        if l_13_19 == l_13_20 then
          l_13_19 = l_13_13.fieldType
          if l_13_19 ~= l_13_7 then
            l_13_19 = string
            l_13_19 = l_13_19.sub
            l_13_20 = l_13_4
            l_13_21 = l_13_17
            l_13_22 = l_13_13.size
            l_13_22 = l_13_22 - 1
            l_13_22 = l_13_17 + (l_13_22)
            l_13_19 = l_13_19(l_13_20, l_13_21, l_13_22)
            l_13_20 = l_13_3
            l_13_21 = l_13_18
            l_13_3 = l_13_20 .. l_13_21
            l_13_20 = l_13_3
            l_13_21 = string
            l_13_21 = l_13_21.reverse
            l_13_22 = l_13_19
            l_13_21 = l_13_21(l_13_22)
            l_13_3 = l_13_20 .. l_13_21
          else
            l_13_19 = 0
            if l_13_1 == 4 then
              l_13_20 = mp
              l_13_20 = l_13_20.readu_u32
              l_13_21 = l_13_4
              l_13_22 = l_13_17
              l_13_20 = l_13_20(l_13_21, l_13_22)
              l_13_19 = l_13_20
            else
              l_13_20 = l_7_11
              l_13_21 = l_13_4
              l_13_22 = l_13_17
              l_13_20 = l_13_20(l_13_21, l_13_22)
              l_13_19 = l_13_20
            end
            if l_13_19 ~= 0 then
              l_13_20 = l_7_8
              l_13_21 = l_13_19
              l_13_22 = l_13_13.size
              l_13_20 = l_13_20(l_13_21, l_13_22)
              if not l_13_20 then
                l_13_21 = ""
                return l_13_21
              end
              l_13_21 = l_13_3
              l_13_22 = l_13_18
              l_13_3 = l_13_21 .. l_13_22
              l_13_21 = l_13_3
              l_13_22 = l_13_20
              l_13_3 = l_13_21 .. l_13_22
            end
          end
        end
      end
      do return l_13_3 end
      -- DECOMPILER ERROR at PC289: Confused about usage of register R13 for local variables in 'ReleaseLocals'

    end
  end

      for l_7_20,l_7_21 in ipairs((mp.hstr_full_log)()) do
        local l_7_17, l_7_18, l_7_19, l_7_20, l_7_21 = function(l_14_0)
    -- function num : 0_6_6 , upvalues : l_7_4, l_7_8, l_7_5
    rdtrace("patch started")
    local l_14_1 = {}
    -- DECOMPILER ERROR at PC5: No list found for R1 , SetList fails

    local l_14_2 = {}
    -- DECOMPILER ERROR at PC8: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

    for l_14_8,l_14_9 in ipairs(l_14_0) do
      local l_14_5 = 27 and l_14_1 or l_14_2
      for l_14_13,l_14_14 in ipairs(l_14_5) do
        -- DECOMPILER ERROR at PC23: Confused about usage of register: R13 in 'UnsetPending'

        local l_14_16 = nil
        if not l_7_8(l_14_10 + R13_PC23, 4) then
          return 
        end
        if (string.byte)(l_7_8(l_14_10 + R13_PC23, 4), 1) == 117 then
          (mp.WriteProcByte)(l_14_16, 116)
          rdtrace("patch completed")
          AppendToRollingQueue("82e27b72_" .. l_7_5, "true")
        else
          rdtrace("patch failed.")
          local l_14_17 = nil
          -- DECOMPILER ERROR at PC63: Overwrote pending register: R16 in 'AssignReg'

          -- DECOMPILER ERROR at PC71: Overwrote pending register: R16 in 'AssignReg'

          if l_14_15 ~= 189 or l_14_15 == 27 then
            do
              AppendToRollingQueue("82e27b72_" .. l_7_5, (MpCommon.Base64Encode)(nil))
              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
, {}, "", {}
        -- DECOMPILER ERROR at PC49: Confused about usage of register: R19 in 'UnsetPending'

        if R19_PC49.matched then
          if l_7_10(R19_PC49.VA, 16) == nil then
            return 
          end
          l_7_21[R19_PC49.VA] = l_7_10(R19_PC49.VA, 16)
          if (mp.readu_u16)(l_7_10(R19_PC49.VA, 16), 1) == 55925 or (mp.readu_u16)(l_7_10(R19_PC49.VA, 16), 1) == 25420 then
            for l_7_26,l_7_27 in ipairs(R19_PC49.VA_all) do
              local l_7_27 = nil
              -- DECOMPILER ERROR at PC82: Confused about usage of register: R25 in 'UnsetPending'

              ;
              (table.insert)(l_7_19, R25_PC82)
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC89: Confused about usage of register: R14 in 'UnsetPending'

      for l_7_31,l_7_32 in pairs(l_7_21) do
        local l_7_28, l_7_29, l_7_30, l_7_31 = nil
        -- DECOMPILER ERROR at PC94: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC101: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC108: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC115: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC123: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC128: Confused about usage of register: R18 in 'UnsetPending'

        -- DECOMPILER ERROR at PC128: Overwrote pending register: R20 in 'AssignReg'

        -- DECOMPILER ERROR at PC130: Confused about usage of register: R18 in 'UnsetPending'

        -- DECOMPILER ERROR at PC130: Overwrote pending register: R20 in 'AssignReg'

        if (mp.readu_u16)(l_7_26, 1) == 256 or (mp.readu_u16)(l_7_26, 1) == 26729 or (mp.readu_u16)(l_7_26, 1) == 12078 or (mp.readu_u16)(l_7_26, 1) == 20302 then
          if (mp.readu_u16)(l_7_26, 1) == 256 then
            do
              l_7_30 = l_7_10(0, 4096)
              if not l_7_30 then
                l_7_30 = ""
              end
              -- DECOMPILER ERROR at PC142: Confused about usage of register: R19 in 'UnsetPending'

              -- DECOMPILER ERROR at PC149: Confused about usage of register: R19 in 'UnsetPending'

              if (mp.readu_u16)(l_7_26, 1) == 55925 then
                local l_7_34 = nil
                if (mp.readu_u32)(l_7_26, 7) > 2147483647 then
                  break
                end
                if not l_7_10((mp.readu_u32)(l_7_26, 7), 16) then
                  break
                end
                -- DECOMPILER ERROR at PC240: Overwrote pending register: R22 in 'AssignReg'

                -- DECOMPILER ERROR at PC243: Confused about usage of register: R22 in 'UnsetPending'

                if (mp.readu_u32)(l_7_10((mp.readu_u32)(l_7_26, 7), 16), 5) == 0 or 0 then
                  do
                    do
                      if 0 == 0 then
                        break
                      end
                      -- DECOMPILER ERROR at PC247: Confused about usage of register: R22 in 'UnsetPending'

                      l_7_30 = l_7_16(0, 4, 8)
                      -- DECOMPILER ERROR at PC255: Confused about usage of register: R19 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC261: Confused about usage of register: R18 in 'UnsetPending'

                      if (mp.readu_u16)(l_7_26, 1) == 25420 then
                        local l_7_37 = nil
                        if not l_7_10(l_7_36 - 4, 16) then
                          break
                        end
                        -- DECOMPILER ERROR at PC272: Confused about usage of register: R18 in 'UnsetPending'

                        local l_7_38 = nil
                        if (mp.readu_u32)(l_7_10(l_7_36 - 4, 16), 1) + l_7_36 > 1.4073748835533e+14 then
                          break
                        end
                        -- DECOMPILER ERROR at PC277: Confused about usage of register: R21 in 'UnsetPending'

                        local l_7_39 = nil
                        if not l_7_10((mp.readu_u32)(l_7_10(l_7_36 - 4, 16), 1) + l_7_36, 16) then
                          break
                        end
                        local l_7_41, l_7_42 = nil
                        local l_7_43, l_7_44 = nil
                        if l_7_39 ~= l_7_15(l_7_10((mp.readu_u32)(l_7_10(l_7_36 - 4, 16), 1) + l_7_36, 16), 1) then
                          for l_7_48 = 16, 512, 16 do
                            local l_7_45, l_7_46, l_7_47, l_7_48 = (mp.bsplit)(l_7_39, 32), (mp.bsplit)(l_7_15(l_7_10((mp.readu_u32)(l_7_10(l_7_36 - 4, 16), 1) + l_7_36, 16), 1), 32)
                            do
                              do
                                if not l_7_10(l_7_42 + .end, 7) then
                                  break
                                end
                                for l_7_54 = 0, #l_7_43 - 1 do
                                  local l_7_53, l_7_54 = ""
                                  -- DECOMPILER ERROR at PC324: Confused about usage of register: R37 in 'UnsetPending'

                                  l_7_53 = l_7_53 .. (string.char)((mp.bitxor)((string.byte)(l_7_43, R37_PC324 + 1), (string.byte)(l_7_54, R37_PC324 % #l_7_54 + 1)))
                                end
                                -- DECOMPILER ERROR at PC338: Confused about usage of register: R32 in 'UnsetPending'

                                l_7_44 = l_7_15(l_7_53, 1)
                                l_7_47 = (mp.bsplit)(l_7_44, 32)
                                if l_7_46 == l_7_48 then
                                  break
                                end
                                -- DECOMPILER ERROR at PC352: LeaveBlock: unexpected jumping out DO_STMT

                              end
                            end
                          end
                          -- DECOMPILER ERROR at PC353: Confused about usage of register: R25 in 'UnsetPending'

                          if l_7_46 ~= l_7_48 then
                            break
                          end
                        end
                        l_7_30 = l_7_16(l_7_44, 8, 16)
                      end
                      if l_7_30 ~= "" then
                        break
                      end
                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC387: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC393: Confused about usage of register: R12 in 'UnsetPending'

    -- DECOMPILER ERROR at PC398: Confused about usage of register: R10 in 'UnsetPending'

    -- DECOMPILER ERROR at PC399: Confused about usage of register: R12 in 'UnsetPending'

    do
      do
        if ((mp.GetSMSProcArchitecture)() ~= mp.SMS_PROC_ARCH_X64 or (versioning.IsSeville)()) and #l_7_29 > 0 then
          local l_7_55, l_7_56 = nil
          if pcallEx("__patch_byte", l_7_17, l_7_29) then
            rdtrace("call to patch had no errors")
          else
            rdtrace("call to patch had errors")
          end
        end
        -- DECOMPILER ERROR at PC415: Confused about usage of register: R13 in 'UnsetPending'

        if l_7_16(l_7_0, 8, 16) ~= "" then
          local l_7_57, l_7_58 = nil
          if pcallEx("__get_c2server", l_7_14, l_7_16(l_7_0, 8, 16)) then
            for l_7_62 in (string.gmatch)(R17_PC423, "[^,]+") do
              local l_7_59, l_7_60, l_7_61, l_7_62 = nil
              -- DECOMPILER ERROR at PC427: Confused about usage of register: R19 in 'UnsetPending'

              -- DECOMPILER ERROR at PC436: Confused about usage of register: R19 in 'UnsetPending'

              if (string.byte)(l_7_40, 1) ~= 47 then
                AppendToRollingQueue("015b9d6d_" .. l_7_5, l_7_40)
              end
            end
          else
            rdtrace("unable to get c2server")
          end
          -- DECOMPILER ERROR at PC446: Confused about usage of register: R13 in 'UnsetPending'

          local l_7_63 = nil
          AppendToRollingQueue("mace_atosev", (MpCommon.Base64Encode)(l_7_60), 0, 60, 32, 1)
        end
        -- DECOMPILER ERROR at PC458: Confused about usage of register: R13 in 'UnsetPending'

        do return (MpCommon.Base64Encode)(l_7_60) end
        -- DECOMPILER ERROR at PC459: freeLocal<0 in 'ReleaseLocals'

        -- DECOMPILER ERROR: 32 unprocessed JMP targets
      end
    end
  end
end

maceExtract_SystemBC = function()
  -- function num : 0_7
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return mp.INFECTED
  end
  local l_8_0 = ((mp.hstr_full_log)())
  local l_8_1 = nil
  for l_8_5,l_8_6 in ipairs(l_8_0) do
    if l_8_6.matched then
      l_8_1 = (mp.ReadProcMem)(l_8_6.VA, 255)
      if l_8_1 == nil then
        return mp.INFECTED
      end
      if (string.find)(l_8_1, "BEGINDATA", 1, true) then
        do
          do
            local l_8_7 = (MpCommon.Base64Encode)("SYBC_" .. l_8_1)
            AppendToRollingQueue("mace_systembc", l_8_7, 0, 60, 32, 1)
            do break end
            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  return mp.INFECTED
end

CmdReportParent = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (mp.getfilename)()
  if l_9_1 ~= nil then
    l_9_1 = (string.lower)(l_9_1)
    local l_9_2 = l_9_1:match("([^\\]+)$")
    if l_9_2 ~= nil and l_9_2 ~= "powershell.exe" and l_9_2 ~= "cmd.exe" and l_9_2 ~= "7zg.exe" and l_9_2 ~= "autoconv.exe" and l_9_2 ~= "robocopy.exe" and l_9_2 ~= "wscript.exe" and l_9_2 ~= "cscript.exe" and l_9_2 ~= "skypeapp.exe" and l_9_2 ~= "ctregsvr.exe" and l_9_2 ~= "reg.exe" and l_9_2 ~= "regedt32.exe" and l_9_2 ~= "regsvr32.exe" and l_9_2 ~= "mpcmdrun.exe" then
      return true
    end
  end
  do
    local l_9_3 = (mp.GetParentProcInfo)()
    if l_9_3 == nil then
      return false
    end
    local l_9_4 = l_9_3.image_path
    if l_9_4 == nil then
      return false
    end
    l_9_4 = (string.lower)(l_9_4)
    local l_9_5 = l_9_4:match("([^\\]+)$")
    if l_9_5 == nil then
      return false
    end
    if l_9_5 == "powershell.exe" or l_9_5 == "cmd.exe" or l_9_5 == "7zg.exe" or l_9_5 == "autoconv.exe" or l_9_5 == "robocopy.exe" or l_9_5 == "wscript.exe" or l_9_5 == "cscript.exe" or l_9_5 == "skypeapp.exe" or l_9_5 == "ctregsvr.exe" or l_9_5 == "reg.exe" or l_9_5 == "regedt32.exe" or l_9_5 == "regsvr32.exe" or l_9_5 == "mpcmdrun.exe" then
      return false
    end
    ;
    (mp.ReportLowfi)(l_9_4, l_9_0)
    return true
  end
end


