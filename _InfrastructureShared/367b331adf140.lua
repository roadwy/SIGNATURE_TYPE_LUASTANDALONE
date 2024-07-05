local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L6_6 = this_sigattrlog
L6_6 = L6_6[1]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = string
  L6_6 = L6_6.lower
  L7_7 = this_sigattrlog
  L7_7 = L7_7[1]
  L7_7 = L7_7.utf8p1
  L6_6 = L6_6(L7_7)
  L0_0 = L6_6
else
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L6_6 = L6_6.matched
  if L6_6 then
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = this_sigattrlog
    L7_7 = L7_7[2]
    L7_7 = L7_7.utf8p1
    L6_6 = L6_6(L7_7)
    L1_1 = L6_6
  else
    L6_6 = this_sigattrlog
    L6_6 = L6_6[3]
    L6_6 = L6_6.matched
    if L6_6 then
      L6_6 = string
      L6_6 = L6_6.lower
      L7_7 = this_sigattrlog
      L7_7 = L7_7[3]
      L7_7 = L7_7.utf8p1
      L6_6 = L6_6(L7_7)
      L2_2 = L6_6
    else
      L6_6 = this_sigattrlog
      L6_6 = L6_6[4]
      L6_6 = L6_6.matched
      if L6_6 then
        L6_6 = string
        L6_6 = L6_6.lower
        L7_7 = this_sigattrlog
        L7_7 = L7_7[4]
        L7_7 = L7_7.utf8p1
        L6_6 = L6_6(L7_7)
        L3_3 = L6_6
      else
        L6_6 = this_sigattrlog
        L6_6 = L6_6[5]
        L6_6 = L6_6.matched
        if L6_6 then
          L6_6 = string
          L6_6 = L6_6.lower
          L7_7 = this_sigattrlog
          L7_7 = L7_7[5]
          L7_7 = L7_7.utf8p1
          L6_6 = L6_6(L7_7)
          L5_5 = L6_6
          L6_6 = string
          L6_6 = L6_6.gsub
          L7_7 = L5_5
          L8_8 = ".1.vb"
          L9_9 = ".0.vb"
          L6_6 = L6_6(L7_7, L8_8, L9_9)
          L0_0 = L6_6
        else
          L6_6 = this_sigattrlog
          L6_6 = L6_6[6]
          L6_6 = L6_6.matched
          if L6_6 then
            L6_6 = string
            L6_6 = L6_6.lower
            L7_7 = this_sigattrlog
            L7_7 = L7_7[6]
            L7_7 = L7_7.utf8p1
            L6_6 = L6_6(L7_7)
            L5_5 = L6_6
            L6_6 = string
            L6_6 = L6_6.gsub
            L7_7 = L5_5
            L8_8 = ".1.cs"
            L9_9 = ".0.cs"
            L6_6 = L6_6(L7_7, L8_8, L9_9)
            L1_1 = L6_6
          else
            L6_6 = this_sigattrlog
            L6_6 = L6_6[7]
            L6_6 = L6_6.matched
            if L6_6 then
              L6_6 = string
              L6_6 = L6_6.lower
              L7_7 = this_sigattrlog
              L7_7 = L7_7[7]
              L7_7 = L7_7.utf8p1
              L6_6 = L6_6(L7_7)
              L5_5 = L6_6
              L6_6 = string
              L6_6 = L6_6.gsub
              L7_7 = L5_5
              L8_8 = ".1.js"
              L9_9 = ".0.js"
              L6_6 = L6_6(L7_7, L8_8, L9_9)
              L2_2 = L6_6
            end
          end
        end
      end
    end
  end
end
if L3_3 ~= nil then
  L6_6 = string
  L6_6 = L6_6.gsub
  L7_7 = L3_3
  L8_8 = ".dll"
  L9_9 = ".0.vb"
  L6_6 = L6_6(L7_7, L8_8, L9_9)
  L0_0 = L6_6
  L6_6 = string
  L6_6 = L6_6.gsub
  L7_7 = L3_3
  L8_8 = ".dll"
  L9_9 = ".0.cs"
  L6_6 = L6_6(L7_7, L8_8, L9_9)
  L1_1 = L6_6
  L6_6 = string
  L6_6 = L6_6.gsub
  L7_7 = L3_3
  L8_8 = ".dll"
  L9_9 = ".0.js"
  L6_6 = L6_6(L7_7, L8_8, L9_9)
  L2_2 = L6_6
end
if L0_0 ~= nil then
  L6_6 = sysio
  L6_6 = L6_6.IsFileExists
  L7_7 = L0_0
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L6_6 = sysio
    L6_6 = L6_6.GetFileSize
    L7_7 = L0_0
    L6_6 = L6_6(L7_7)
    if L6_6 > 8192 then
      L7_7 = 8192
      L6_6 = L7_7 or L6_6
    end
    L7_7 = tostring
    L8_8 = sysio
    L8_8 = L8_8.ReadFile
    L9_9 = L0_0
    L10_10 = 0
    L11_11 = L6_6
    L12_12 = L8_8(L9_9, L10_10, L11_11)
    L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L8_8(L9_9, L10_10, L11_11))
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L7_7
    L10_10 = "#ExternalChecksum%(\"([^\"]+)"
    L8_8 = L8_8(L9_9, L10_10)
    L4_4 = L8_8
  end
elseif L1_1 ~= nil then
  L6_6 = sysio
  L6_6 = L6_6.IsFileExists
  L7_7 = L1_1
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L6_6 = sysio
    L6_6 = L6_6.GetFileSize
    L7_7 = L1_1
    L6_6 = L6_6(L7_7)
    if L6_6 > 8192 then
      L7_7 = 8192
      L6_6 = L7_7 or L6_6
    end
    L7_7 = tostring
    L8_8 = sysio
    L8_8 = L8_8.ReadFile
    L9_9 = L1_1
    L10_10 = 0
    L11_11 = L6_6
    L12_12 = L8_8(L9_9, L10_10, L11_11)
    L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L8_8(L9_9, L10_10, L11_11))
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L7_7
    L10_10 = "#pragma checksum \"([^\"]+)"
    L8_8 = L8_8(L9_9, L10_10)
    L4_4 = L8_8
  end
elseif L2_2 ~= nil then
  L6_6 = sysio
  L6_6 = L6_6.IsFileExists
  L7_7 = L2_2
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L6_6 = sysio
    L6_6 = L6_6.GetFileSize
    L7_7 = L2_2
    L6_6 = L6_6(L7_7)
    if L6_6 > 12288 then
      L7_7 = 12288
      L6_6 = L7_7 or L6_6
    end
    L7_7 = tostring
    L8_8 = sysio
    L8_8 = L8_8.ReadFile
    L9_9 = L2_2
    L10_10 = 0
    L11_11 = L6_6
    L12_12 = L8_8(L9_9, L10_10, L11_11)
    L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L8_8(L9_9, L10_10, L11_11))
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L7_7
    L10_10 = "//@set @position%(file=\"([^\"]+%.as[hp]x)\""
    L8_8 = L8_8(L9_9, L10_10)
    L4_4 = L8_8
    L8_8 = string
    L8_8 = L8_8.gsub
    L9_9 = L4_4
    L10_10 = "\\\\"
    L11_11 = "\\"
    L8_8 = L8_8(L9_9, L10_10, L11_11)
    L4_4 = L8_8
  end
end
if L4_4 then
  L6_6 = sysio
  L6_6 = L6_6.IsFileExists
  L7_7 = L4_4
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L6_6 = string
    L6_6 = L6_6.sub
    L7_7 = L4_4
    L8_8 = -4
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = "|.asp|aspx|ashx|asmx|"
    L8_8 = string
    L8_8 = L8_8.find
    L9_9 = L7_7
    L10_10 = L6_6
    L11_11 = 1
    L12_12 = true
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
    if L8_8 ~= nil then
      L8_8 = sysio
      L8_8 = L8_8.GetFileSize
      L9_9 = L4_4
      L8_8 = L8_8(L9_9)
      if L8_8 > 512 then
        L9_9 = 512
        L8_8 = L9_9 or L8_8
      end
      L9_9 = tostring
      L10_10 = sysio
      L10_10 = L10_10.ReadFile
      L11_11 = L4_4
      L12_12 = 0
      L12_12 = L10_10(L11_11, L12_12, L8_8)
      L9_9 = L9_9(L10_10, L11_11, L12_12, L10_10(L11_11, L12_12, L8_8))
      L10_10 = MpCommon
      L10_10 = L10_10.StringRegExpSearch
      L11_11 = "(?i)(CodeBehind=\"|Inherits=\"|<%@ Register|CodeFile=\"|MasterPageFile=\"|WORKFLOW AUTOMATICALLY GENERATED SERVER CODE|UEditorHandler|CKEditor)"
      L12_12 = L9_9
      L11_11 = L10_10(L11_11, L12_12)
      if L10_10 then
        L12_12 = mp
        L12_12 = L12_12.CLEAN
        return L12_12
      end
      L12_12 = string
      L12_12 = L12_12.match
      L12_12 = L12_12(L4_4, "(.*\\)[^\\]+$")
      if L12_12 then
        bm.add_related_string("webshellpaths", L12_12, bm.RelatedStringBMReport)
      end
      bm.add_threat_file(L4_4)
      mp.ReportLowfi(L4_4, 3765990157)
      return mp.INFECTED
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
