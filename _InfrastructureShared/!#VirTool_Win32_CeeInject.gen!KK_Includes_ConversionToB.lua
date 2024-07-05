local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = peattributes
L1_1 = L1_1.packersigmatched
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = peattributes
L1_1 = L1_1.dropped
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L1_1 < 3 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pehdr
L1_1 = L1_1.Subsystem
if L1_1 ~= 2 then
  L1_1 = pehdr
  L1_1 = L1_1.Subsystem
  if L1_1 ~= 3 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "MpInternalParanoid"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "HSTR:VirTool:Win32/CeeInject.gen!KK_enc"
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L4_4 = L3_3()
    L2_2 = L2_2(L3_3, L4_4, L3_3())
    L3_3 = ".pse$"
    L1_1 = L1_1(L2_2, L3_3)
    if not L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L2_2 = "VirTool:Win32/CeeInject.gen!KK_enc"
      L1_1 = L1_1(L2_2)
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.get_mpattribute
        L2_2 = "Zbot:CeeInject.gen!KK_enc"
        L1_1 = L1_1(L2_2)
        if not L1_1 then
          L1_1 = mp
          L1_1 = L1_1.CLEAN
          return L1_1
        end
      end
      L1_1 = 0
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_dosheader
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_falign
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_heap_geometry
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_heap_size
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_image_size
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_image_version
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_imagebase
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_linker_version
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_ntheader
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_number_of_dirs
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_os_version
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_rebase
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_characteristics
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_fsize
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_name
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_offset
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_rva
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_section_vsize
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_stack_geometry
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_stack_size
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_subsystem
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_subsystem_version
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_timestamp
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      L2_2 = peattributes
      L2_2 = L2_2.suspicious_valign
      if L2_2 then
        L1_1 = L1_1 + 1
      end
      if L1_1 < 3 then
        L2_2 = pesecs
        L2_2 = L2_2[1]
        L2_2 = L2_2.NameDW
        if L2_2 ~= 2019914798 then
          L2_2 = pesecs
          L2_2 = L2_2[1]
          L2_2 = L2_2.NameDW
          if L2_2 ~= 2019915566 then
            L2_2 = pesecs
            L2_2 = L2_2[1]
            L2_2 = L2_2.NameDW
            if L2_2 ~= 2019914896 then
              L2_2 = pesecs
              L2_2 = L2_2[1]
              L2_2 = L2_2.NameDW
              if L2_2 ~= 2019914753 then
                L2_2 = pesecs
                L2_2 = L2_2[1]
                L2_2 = L2_2.NameDW
                if L2_2 ~= 2019914795 then
                  L2_2 = pesecs
                  L2_2 = L2_2[1]
                  L2_2 = L2_2.NameDW
                  if L2_2 ~= 2013361198 then
                    L2_2 = pesecs
                    L2_2 = L2_2[1]
                    L2_2 = L2_2.NameDW
                    if L2_2 ~= 2019885358 then
                      L2_2 = pesecs
                      L2_2 = L2_2[1]
                      L2_2 = L2_2.NameDW
                      if L2_2 ~= 23426094 then
                        L2_2 = pesecs
                        L2_2 = L2_2[1]
                        L2_2 = L2_2.Characteristics
                        if L2_2 ~= 1610612768 then
                          L2_2 = pesecs
                          L2_2 = L2_2[1]
                          L2_2 = L2_2.Characteristics
                          if L2_2 ~= 3758096416 then
                            L2_2 = pesecs
                            L2_2 = L2_2[1]
                            L2_2 = L2_2.Characteristics
                            if L2_2 ~= 1610612737 then
                              L2_2 = pesecs
                              L2_2 = L2_2[1]
                              L2_2 = L2_2.Characteristics
                              if L2_2 ~= 1610612880 then
                                L2_2 = pesecs
                                L2_2 = L2_2[1]
                                L2_2 = L2_2.Characteristics
                                if L2_2 ~= 1610743840 then
                                  L2_2 = pesecs
                                  L2_2 = L2_2[1]
                                  L2_2 = L2_2.Characteristics
                                  if L2_2 ~= 1342177312 then
                                    L2_2 = pesecs
                                    L2_2 = L2_2[1]
                                    L2_2 = L2_2.Characteristics
                                    if L2_2 ~= 1610612739 then
                                      L2_2 = pesecs
                                      L2_2 = L2_2[1]
                                      L2_2 = L2_2.Characteristics
                                      if L2_2 ~= 2415919136 then
                                        L2_2 = pesecs
                                        L2_2 = L2_2[1]
                                        L2_2 = L2_2.Characteristics
                                        if L2_2 ~= 1879048224 then
                                          L2_2 = pesecs
                                          L2_2 = L2_2[1]
                                          L2_2 = L2_2.Characteristics
                                          if L2_2 ~= 1879085088 then
                                            L2_2 = pesecs
                                            L2_2 = L2_2[1]
                                            L2_2 = L2_2.Characteristics
                                            if L2_2 ~= 1879048240 then
                                              L2_2 = pesecs
                                              L2_2 = L2_2[1]
                                              L2_2 = L2_2.Characteristics
                                              if L2_2 ~= 1879048480 then
                                                L2_2 = pesecs
                                                L2_2 = L2_2[1]
                                                L2_2 = L2_2.Characteristics
                                                if L2_2 ~= 1610612741 then
                                                  L2_2 = pesecs
                                                  L2_2 = L2_2[1]
                                                  L2_2 = L2_2.Characteristics
                                                  if L2_2 ~= 1610618400 then
                                                    L2_2 = pesecs
                                                    L2_2 = L2_2[1]
                                                    L2_2 = L2_2.Characteristics
                                                    if L2_2 ~= 1610612896 then
                                                      L2_2 = pesecs
                                                      L2_2 = L2_2[1]
                                                      L2_2 = L2_2.Characteristics
                                                      if L2_2 ~= 1073741888 then
                                                        L2_2 = pesecs
                                                        L2_2 = L2_2[1]
                                                        L2_2 = L2_2.Characteristics
                                                        if L2_2 ~= 1342177344 then
                                                          L2_2 = pesecs
                                                          L2_2 = L2_2[1]
                                                          L2_2 = L2_2.Characteristics
                                                          if L2_2 ~= 3841982496 then
                                                            L2_2 = pesecs
                                                            L2_2 = L2_2[1]
                                                            L2_2 = L2_2.Characteristics
                                                            if L2_2 ~= 1073741856 then
                                                              L2_2 = pesecs
                                                              L2_2 = L2_2[1]
                                                              L2_2 = L2_2.Characteristics
                                                              if L2_2 ~= 1610612800 then
                                                                L2_2 = mp
                                                                L2_2 = L2_2.CLEAN
                                                                return L2_2
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
                  end
                end
              end
            end
          end
        end
        L2_2 = pesecs
        L2_2 = L2_2[2]
        L2_2 = L2_2.NameDW
        if L2_2 ~= 1633972782 then
          L2_2 = pesecs
          L2_2 = L2_2[2]
          L2_2 = L2_2.NameDW
          if L2_2 ~= 1633972737 then
            L2_2 = pesecs
            L2_2 = L2_2[2]
            L2_2 = L2_2.NameDW
            if L2_2 ~= 1414677294 then
              L2_2 = pesecs
              L2_2 = L2_2[2]
              L2_2 = L2_2.NameDW
              if L2_2 ~= 1633970478 then
                L2_2 = pesecs
                L2_2 = L2_2[2]
                L2_2 = L2_2.NameDW
                if L2_2 ~= 1920168494 then
                  L2_2 = pesecs
                  L2_2 = L2_2[2]
                  L2_2 = L2_2.NameDW
                  if L2_2 ~= 1627419182 then
                    L2_2 = pesecs
                    L2_2 = L2_2[2]
                    L2_2 = L2_2.NameDW
                    if L2_2 ~= 1633972737 then
                      L2_2 = pesecs
                      L2_2 = L2_2[2]
                      L2_2 = L2_2.NameDW
                      if L2_2 ~= 1633972739 then
                        L2_2 = pesecs
                        L2_2 = L2_2[2]
                        L2_2 = L2_2.Characteristics
                        if L2_2 ~= 1073741888 then
                          L2_2 = pesecs
                          L2_2 = L2_2[2]
                          L2_2 = L2_2.Characteristics
                          if L2_2 ~= 16777280 then
                            L2_2 = pesecs
                            L2_2 = L2_2[2]
                            L2_2 = L2_2.Characteristics
                            if L2_2 ~= 3221225536 then
                              L2_2 = pesecs
                              L2_2 = L2_2[2]
                              L2_2 = L2_2.Characteristics
                              if L2_2 ~= 3221291072 then
                                L2_2 = pesecs
                                L2_2 = L2_2[2]
                                L2_2 = L2_2.Characteristics
                                if L2_2 ~= 3758096416 then
                                  L2_2 = pesecs
                                  L2_2 = L2_2[2]
                                  L2_2 = L2_2.Characteristics
                                  if L2_2 ~= 1073741827 then
                                    L2_2 = pesecs
                                    L2_2 = L2_2[2]
                                    L2_2 = L2_2.Characteristics
                                    if L2_2 ~= 1073807424 then
                                      L2_2 = pesecs
                                      L2_2 = L2_2[2]
                                      L2_2 = L2_2.Characteristics
                                      if L2_2 ~= 1073741825 then
                                        L2_2 = pesecs
                                        L2_2 = L2_2[2]
                                        L2_2 = L2_2.Characteristics
                                        if L2_2 ~= 2868904000 then
                                          L2_2 = pesecs
                                          L2_2 = L2_2[2]
                                          L2_2 = L2_2.Characteristics
                                          if L2_2 ~= 2868904256 then
                                            L2_2 = pesecs
                                            L2_2 = L2_2[2]
                                            L2_2 = L2_2.Characteristics
                                            if L2_2 ~= 3221225473 then
                                              L2_2 = pesecs
                                              L2_2 = L2_2[2]
                                              L2_2 = L2_2.Characteristics
                                              if L2_2 ~= 2868904193 then
                                                L2_2 = pesecs
                                                L2_2 = L2_2[2]
                                                L2_2 = L2_2.Characteristics
                                                if L2_2 ~= 1073773120 then
                                                  L2_2 = pesecs
                                                  L2_2 = L2_2[2]
                                                  L2_2 = L2_2.Characteristics
                                                  if L2_2 ~= 1442840640 then
                                                    L2_2 = pesecs
                                                    L2_2 = L2_2[2]
                                                    L2_2 = L2_2.Characteristics
                                                    if L2_2 ~= 1073742144 then
                                                      L2_2 = pesecs
                                                      L2_2 = L2_2[2]
                                                      L2_2 = L2_2.Characteristics
                                                      if L2_2 ~= 1442881600 then
                                                        L2_2 = pesecs
                                                        L2_2 = L2_2[2]
                                                        L2_2 = L2_2.Characteristics
                                                        if L2_2 ~= 1073807424 then
                                                          L2_2 = pesecs
                                                          L2_2 = L2_2[2]
                                                          L2_2 = L2_2.Characteristics
                                                          if L2_2 ~= 2147483712 then
                                                            L2_2 = pesecs
                                                            L2_2 = L2_2[2]
                                                            L2_2 = L2_2.Characteristics
                                                            if L2_2 ~= 3489660992 then
                                                              L2_2 = pesecs
                                                              L2_2 = L2_2[2]
                                                              L2_2 = L2_2.Characteristics
                                                              if L2_2 ~= 1610612768 then
                                                                L2_2 = mp
                                                                L2_2 = L2_2.CLEAN
                                                                return L2_2
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
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000\184\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\192\000\000\000\014\031\186\014\000\180\t\205!\184\001L\205![DYNEXE] A HELPER STUB TO EMULATE WIN32 MALWARES.$-----------------------------------------------------------jirehPE\000\000L\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\002\001\v\001\n\n\004\000\000\000\000\000\000\000\000\000\000\000\224\001\000\000\224\001\000\000\228\001\000\000\000\000@\000\001\000\000\000\001\000\000\000\005\000\001\000\000\000\000\000\005\000\001\000\000\000\000\000\224\001P\000\224\001\000\000\000\000\000\000\003\000@\133\000\000\016\000\000\016\000\000\000\000\016\000\000\016\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.xray\000\000\000\000\000P\000\224\001\000\000\000\000P\000\224\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\000\224\195"
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.PointerToRawData
if L0_0 <= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.PointerToRawData
L2_2 = L0_0 - L2_2
if L2_2 > 5242880 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = pesecs
L4_4 = L4_4[1]
L4_4 = L4_4.PointerToRawData
L3_3 = L3_3(L4_4, L0_0 - pesecs[1].PointerToRawData)
L2_2 = L2_2 .. L3_3
L3_3 = peattributes
L3_3 = L3_3.packed
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.get_parent_filehandle
  L3_3 = L3_3()
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.get_filesize_by_handle
  L4_4 = L4_4(L3_3)
  if L4_4 > 5242880 then
    return mp.CLEAN
  end
  L2_2 = L2_2 .. mp.readfile_by_handle(L3_3, 0, L4_4)
end
L3_3 = #L2_2
if not (L3_3 < 4096) then
  L3_3 = #L2_2
elseif L3_3 > 5242880 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2
L4_4 = fastBinaryTransform
L4_4 = L4_4(L2_2, "(.).", 0, mp.bitxor)
L2_2 = L3_3 .. L4_4
L3_3 = L2_2
L4_4 = fastBinaryTransform
L4_4 = L4_4(L2_2, ".(.)", 0, mp.bitxor)
L2_2 = L3_3 .. L4_4
L3_3 = #L2_2
if not (L3_3 < 4096) then
  L3_3 = #L2_2
elseif L3_3 > 5242880 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.vfo_add_buffer
L4_4 = L2_2
L3_3(L4_4, "[CeeInject_KK_DynExe]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
