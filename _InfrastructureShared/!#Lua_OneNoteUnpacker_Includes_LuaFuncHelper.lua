local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = ""
L2_2 = {}
if L0_0 > 5120000 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3.pe = "\231\022\227\189e&\017E\164\196\141M\vz\158\172\144\001\020MZ\144\000"
L3_3.lnk = "\231\022\227\189e&\017E\164\196\141M\vz\158\172\144\001\020L\000\000\000\144\000"
L3_3.script = "\231\022\227\189e&\017E\164\196\141M\vz\158\172\144\002\255\144\023\n\b\b\006\006\006\006\n\004\016\016On Erroron errorScriptscriptSCRIPT<html>powershell#@~^<HTA:APPLICATION<hta:application\144\000"
L3_3.bat = "\231\022\227\189e&\017E\164\196\141M\vz\158\172\144\001\020\144\023\002\005\005@echo@ECHO\144\000"
L3_3.chm = "\231\022\227\189e&\017E\164\196\141M\vz\158\172\144\001\020ITSF\144\000"
for L7_7, L8_8 in next, L3_3, nil do
  L9_9 = pcall
  L10_10 = mp
  L10_10 = L10_10.BMSearchFile
  L11_11 = 0
  L12_12 = L0_0
  L13_13 = L8_8
  L10_10 = L9_9(L10_10, L11_11, L12_12, L13_13)
  if L9_9 and L10_10 ~= -1 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L12_12 = "//Lua:OneNoteFileData"
    L11_11(L12_12)
    L11_11 = mp
    L11_11 = L11_11.readprotection
    L12_12 = false
    L11_11(L12_12)
    L11_11 = 36
    L12_12 = L10_10 + L11_11
    if L0_0 > L12_12 then
      L12_12 = mp
      L12_12 = L12_12.readfile
      L13_13 = L10_10
      L14_14 = L11_11
      L12_12 = L12_12(L13_13, L14_14)
      L13_13 = mp
      L13_13 = L13_13.readu_u64
      L14_14 = L12_12
      L13_13 = L13_13(L14_14, 17)
      L14_14 = L10_10 + L11_11
      L14_14 = L14_14 + L13_13
      if L0_0 > L14_14 then
        L14_14 = mp
        L14_14 = L14_14.readfile
        L14_14 = L14_14(L10_10 + L11_11, L13_13)
        mp.readprotection(true)
        if not L2_2[crypto.Sha1Buffer(L14_14, 0, #L14_14)] then
          L2_2[crypto.Sha1Buffer(L14_14, 0, #L14_14)] = true
          if L7_7 == "pe" then
            L1_1 = "PE"
            mp.set_mpattribute("//Lua:OneNoteFileDataPE")
          elseif L7_7 == "bat" then
            L1_1 = "BAT"
            mp.set_mpattribute("//Lua:OneNoteFileDataBAT")
          elseif L7_7 == "script" then
            L1_1 = "SCRIPT"
            mp.set_mpattribute("//Lua:OneNoteFileDataSCRIPT")
          elseif L7_7 == "chm" then
            L1_1 = "CHM"
            mp.set_mpattribute("//Lua:OneNoteFileDataCHM")
          elseif L7_7 == "lnk" then
            L1_1 = "LNK"
            mp.set_mpattribute("//Lua:OneNoteFileDataLNK")
          end
          mp.vfo_add_buffer(L14_14, "[ONENOTE_FILEDATA_" .. L1_1 .. "]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        end
      end
    end
  end
end
return L4_4
