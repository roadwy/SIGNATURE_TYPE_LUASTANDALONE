local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.gsub
  L2_2 = L0_0
  L3_3 = ".dll"
  L4_4 = ".0.vb"
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_3 = L0_0
  L4_4 = ".dll"
  L5_5 = ".0.cs"
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L3_3 = string
  L3_3 = L3_3.gsub
  L4_4 = L0_0
  L5_5 = ".dll"
  L6_6 = ".0.js"
  L3_3 = L3_3(L4_4, L5_5, L6_6)
  L4_4 = nil
  if L1_1 ~= nil then
    L5_5 = sysio
    L5_5 = L5_5.IsFileExists
    L6_6 = L1_1
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = sysio
      L5_5 = L5_5.GetFileSize
      L6_6 = L1_1
      L5_5 = L5_5(L6_6)
      if L5_5 > 8192 then
        L6_6 = 8192
        L5_5 = L6_6 or L5_5
      end
      L6_6 = tostring
      L7_7 = sysio
      L7_7 = L7_7.ReadFile
      L8_8 = L1_1
      L9_9 = 0
      L10_10 = L5_5
      L11_11 = L7_7(L8_8, L9_9, L10_10)
      L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8, L9_9, L10_10))
      L7_7 = string
      L7_7 = L7_7.match
      L8_8 = L6_6
      L9_9 = "#ExternalChecksum%(\"([^\"]+)"
      L7_7 = L7_7(L8_8, L9_9)
      L4_4 = L7_7
    end
  elseif L2_2 ~= nil then
    L5_5 = sysio
    L5_5 = L5_5.IsFileExists
    L6_6 = L2_2
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = sysio
      L5_5 = L5_5.GetFileSize
      L6_6 = L2_2
      L5_5 = L5_5(L6_6)
      if L5_5 > 8192 then
        L6_6 = 8192
        L5_5 = L6_6 or L5_5
      end
      L6_6 = tostring
      L7_7 = sysio
      L7_7 = L7_7.ReadFile
      L8_8 = L2_2
      L9_9 = 0
      L10_10 = L5_5
      L11_11 = L7_7(L8_8, L9_9, L10_10)
      L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8, L9_9, L10_10))
      L7_7 = string
      L7_7 = L7_7.match
      L8_8 = L6_6
      L9_9 = "#pragma checksum \"([^\"]+)"
      L7_7 = L7_7(L8_8, L9_9)
      L4_4 = L7_7
    end
  elseif L3_3 ~= nil then
    L5_5 = sysio
    L5_5 = L5_5.IsFileExists
    L6_6 = L3_3
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = sysio
      L5_5 = L5_5.GetFileSize
      L6_6 = L3_3
      L5_5 = L5_5(L6_6)
      if L5_5 > 12288 then
        L6_6 = 12288
        L5_5 = L6_6 or L5_5
      end
      L6_6 = tostring
      L7_7 = sysio
      L7_7 = L7_7.ReadFile
      L8_8 = L3_3
      L9_9 = 0
      L10_10 = L5_5
      L11_11 = L7_7(L8_8, L9_9, L10_10)
      L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8, L9_9, L10_10))
      L7_7 = string
      L7_7 = L7_7.match
      L8_8 = L6_6
      L9_9 = "//@set @position%(file=\"([^\"]+%.as[hp]x)\""
      L7_7 = L7_7(L8_8, L9_9)
      L4_4 = L7_7
      L7_7 = string
      L7_7 = L7_7.gsub
      L8_8 = L4_4
      L9_9 = "\\\\"
      L10_10 = "\\"
      L7_7 = L7_7(L8_8, L9_9, L10_10)
      L4_4 = L7_7
    end
  end
  if L4_4 then
    L5_5 = sysio
    L5_5 = L5_5.IsFileExists
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = string
      L5_5 = L5_5.sub
      L6_6 = L4_4
      L7_7 = -4
      L5_5 = L5_5(L6_6, L7_7)
      L6_6 = "|.asp|aspx|ashx|asmx|"
      L7_7 = string
      L7_7 = L7_7.find
      L8_8 = L6_6
      L9_9 = L5_5
      L10_10 = 1
      L11_11 = true
      L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
      if L7_7 ~= nil then
        L7_7 = sysio
        L7_7 = L7_7.GetFileSize
        L8_8 = L4_4
        L7_7 = L7_7(L8_8)
        if L7_7 > 512 then
          L8_8 = 512
          L7_7 = L8_8 or L7_7
        end
        L8_8 = tostring
        L9_9 = sysio
        L9_9 = L9_9.ReadFile
        L10_10 = L4_4
        L11_11 = 0
        L11_11 = L9_9(L10_10, L11_11, L7_7)
        L8_8 = L8_8(L9_9, L10_10, L11_11, L9_9(L10_10, L11_11, L7_7))
        L9_9 = MpCommon
        L9_9 = L9_9.StringRegExpSearch
        L10_10 = "(?i)(CodeBehind=\"|Inherits=\"|<%@ Register|CodeFile=\"|MasterPageFile=\"|WORKFLOW AUTOMATICALLY GENERATED SERVER CODE|UEditorHandler|PK\\x03\\x04)"
        L11_11 = L8_8
        L10_10 = L9_9(L10_10, L11_11)
        if L9_9 then
          L11_11 = mp
          L11_11 = L11_11.CLEAN
          return L11_11
        end
        L11_11 = string
        L11_11 = L11_11.match
        L11_11 = L11_11(L4_4, "(.*\\)[^\\]+$")
        if L11_11 then
          bm.add_related_string("webshellpaths", L11_11, bm.RelatedStringBMReport)
        end
        mp.ReportLowfi(L4_4, 3773540373)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
