local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p1
      L2_2 = L2_2(L3_3)
      L0_0 = L2_2
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = string
        L2_2 = L2_2.lower
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.utf8p1
        L2_2 = L2_2(L3_3)
        L0_0 = L2_2
      end
    end
  end
end
if L0_0 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = sysio
    L2_2 = L2_2.GetFileSize
    L3_3 = L0_0
    L2_2 = L2_2(L3_3)
    if L2_2 > 8192 then
      L3_3 = 8192
      L2_2 = L3_3 or L2_2
    end
    L3_3 = tostring
    L4_4 = sysio
    L4_4 = L4_4.ReadFile
    L5_5 = L0_0
    L6_6 = 0
    L7_7 = L2_2
    L13_13 = L4_4(L5_5, L6_6, L7_7)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L4_4(L5_5, L6_6, L7_7))
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L3_3
    L6_6 = "assembly=\"(App_Web_[^\"]+)\""
    L4_4 = L4_4(L5_5, L6_6)
    L1_1 = L4_4
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2, L3_3, L4_4, L5_5 = nil, nil, nil, nil
L6_6 = string
L6_6 = L6_6.match
L7_7 = L0_0
L8_8 = "\\([^\\]+)$"
L6_6 = L6_6(L7_7, L8_8)
if L6_6 ~= nil then
  L7_7 = string
  L7_7 = L7_7.gsub
  L8_8 = L0_0
  L9_9 = L6_6
  L10_10 = L1_1
  L11_11 = ".0.vb"
  L10_10 = L10_10 .. L11_11
  L7_7 = L7_7(L8_8, L9_9, L10_10)
  L2_2 = L7_7
  L7_7 = string
  L7_7 = L7_7.gsub
  L8_8 = L0_0
  L9_9 = L6_6
  L10_10 = L1_1
  L11_11 = ".0.cs"
  L10_10 = L10_10 .. L11_11
  L7_7 = L7_7(L8_8, L9_9, L10_10)
  L3_3 = L7_7
  L7_7 = string
  L7_7 = L7_7.gsub
  L8_8 = L0_0
  L9_9 = L6_6
  L10_10 = L1_1
  L11_11 = ".0.js"
  L10_10 = L10_10 .. L11_11
  L7_7 = L7_7(L8_8, L9_9, L10_10)
  L4_4 = L7_7
end
if L2_2 ~= nil then
  L7_7 = sysio
  L7_7 = L7_7.IsFileExists
  L8_8 = L2_2
  L7_7 = L7_7(L8_8)
  if L7_7 then
    L7_7 = sysio
    L7_7 = L7_7.GetFileSize
    L8_8 = L2_2
    L7_7 = L7_7(L8_8)
    if L7_7 > 8192 then
      L8_8 = 8192
      L7_7 = L8_8 or L7_7
    end
    L8_8 = tostring
    L9_9 = sysio
    L9_9 = L9_9.ReadFile
    L10_10 = L2_2
    L11_11 = 0
    L12_12 = L7_7
    L13_13 = L9_9(L10_10, L11_11, L12_12)
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L9_9(L10_10, L11_11, L12_12))
    L9_9 = string
    L9_9 = L9_9.match
    L10_10 = L8_8
    L11_11 = "#ExternalChecksum%(\"([^\"]+)"
    L9_9 = L9_9(L10_10, L11_11)
    L5_5 = L9_9
  end
elseif L3_3 ~= nil then
  L7_7 = sysio
  L7_7 = L7_7.IsFileExists
  L8_8 = L3_3
  L7_7 = L7_7(L8_8)
  if L7_7 then
    L7_7 = sysio
    L7_7 = L7_7.GetFileSize
    L8_8 = L3_3
    L7_7 = L7_7(L8_8)
    if L7_7 > 8192 then
      L8_8 = 8192
      L7_7 = L8_8 or L7_7
    end
    L8_8 = tostring
    L9_9 = sysio
    L9_9 = L9_9.ReadFile
    L10_10 = L3_3
    L11_11 = 0
    L12_12 = L7_7
    L13_13 = L9_9(L10_10, L11_11, L12_12)
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L9_9(L10_10, L11_11, L12_12))
    L9_9 = string
    L9_9 = L9_9.match
    L10_10 = L8_8
    L11_11 = "#pragma checksum \"([^\"]+)"
    L9_9 = L9_9(L10_10, L11_11)
    L5_5 = L9_9
  end
elseif L4_4 ~= nil then
  L7_7 = sysio
  L7_7 = L7_7.IsFileExists
  L8_8 = L4_4
  L7_7 = L7_7(L8_8)
  if L7_7 then
    L7_7 = sysio
    L7_7 = L7_7.GetFileSize
    L8_8 = L4_4
    L7_7 = L7_7(L8_8)
    if L7_7 > 12288 then
      L8_8 = 12288
      L7_7 = L8_8 or L7_7
    end
    L8_8 = tostring
    L9_9 = sysio
    L9_9 = L9_9.ReadFile
    L10_10 = L4_4
    L11_11 = 0
    L12_12 = L7_7
    L13_13 = L9_9(L10_10, L11_11, L12_12)
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L9_9(L10_10, L11_11, L12_12))
    L9_9 = string
    L9_9 = L9_9.match
    L10_10 = L8_8
    L11_11 = "//@set @position%(file=\"([^\"]+%.as[hp]x)\""
    L9_9 = L9_9(L10_10, L11_11)
    L5_5 = L9_9
    L9_9 = string
    L9_9 = L9_9.gsub
    L10_10 = L5_5
    L11_11 = "\\\\"
    L12_12 = "\\"
    L9_9 = L9_9(L10_10, L11_11, L12_12)
    L5_5 = L9_9
  end
end
if L5_5 then
  L7_7 = sysio
  L7_7 = L7_7.IsFileExists
  L8_8 = L5_5
  L7_7 = L7_7(L8_8)
  if L7_7 then
    L7_7 = string
    L7_7 = L7_7.sub
    L8_8 = L5_5
    L9_9 = -4
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = "|.asp|aspx|ashx|asmx|"
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L8_8
    L11_11 = L7_7
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = sysio
      L9_9 = L9_9.GetFileSize
      L10_10 = L5_5
      L9_9 = L9_9(L10_10)
      if L9_9 > 512 then
        L10_10 = 512
        L9_9 = L10_10 or L9_9
      end
      L10_10 = tostring
      L11_11 = sysio
      L11_11 = L11_11.ReadFile
      L12_12 = L5_5
      L13_13 = 0
      L13_13 = L11_11(L12_12, L13_13, L9_9)
      L10_10 = L10_10(L11_11, L12_12, L13_13, L11_11(L12_12, L13_13, L9_9))
      L11_11 = MpCommon
      L11_11 = L11_11.StringRegExpSearch
      L12_12 = "(?i)(CodeBehind=\"|Inherits=\"|<%@ Register|CodeFile=\"|MasterPageFile=\"|WORKFLOW AUTOMATICALLY GENERATED SERVER CODE|UEditorHandler)"
      L13_13 = L10_10
      L12_12 = L11_11(L12_12, L13_13)
      if L11_11 then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
      L13_13 = string
      L13_13 = L13_13.match
      L13_13 = L13_13(L5_5, "(.*\\)[^\\]+$")
      if L13_13 then
        bm.add_related_string("webshellpaths", L13_13, bm.RelatedStringBMReport)
      end
      mp.ReportLowfi(L5_5, 2714789737)
      return mp.INFECTED
    end
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
