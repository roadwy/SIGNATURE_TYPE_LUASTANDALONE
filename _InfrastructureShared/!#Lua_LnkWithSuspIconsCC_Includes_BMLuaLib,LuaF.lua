local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:LNK_Settings!RunMinimized"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:FileOnIsoRoot"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.GetLnkInfo
L1_1 = L0_0(L1_1)
if L0_0 == false or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.Arguments
L2_2 = L2_2 or nil
L3_3 = L1_1.BasePath
L3_3 = L3_3 or nil
L4_4 = L1_1.RelativePath
L4_4 = L4_4 or nil
L5_5 = L1_1.IconLocation
L5_5 = L5_5 or nil
L6_6 = L1_1.IconIndex
L6_6 = L6_6 or nil
L7_7 = 0
if L5_5 ~= nil then
  L8_8 = L5_5.byte
  L8_8 = L8_8(L5_5)
  if L8_8 < 65 or L8_8 > 122 then
    for _FORV_13_ = 1, #{
      string.byte(L5_5, 1, #L5_5)
    } do
      if 65 <= ({
        string.byte(L5_5, 1, #L5_5)
      })[_FORV_13_] and 122 >= ({
        string.byte(L5_5, 1, #L5_5)
      })[_FORV_13_] then
        L7_7 = _FORV_13_
        break
      end
    end
  end
  if L7_7 >= 1 then
    mp.set_mpattribute("NotReadableCharsInIcnLoc")
  end
  L5_5 = L5_5:match("\\([^\\]+)$"):lower()
  mp.set_mpattribute("//HasIconLocation!" .. L5_5)
end
if L6_6 ~= nil then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L8_8("//HasIconIndex!" .. L6_6)
end
L8_8 = {
  "odbcconf",
  "rundll32",
  "regsvr",
  "powershell",
  "calc",
  "wscript",
  "cscript",
  "mshta"
}
if L4_4 ~= nil then
  L4_4 = L4_4:lower()
  if StringEndsWith(L4_4, ".js") or StringEndsWith(L4_4, ".cmd") or StringEndsWith(L4_4, ".bat") or StringEndsWith(L4_4, ".vbs") then
  end
end
if true == false and L2_2 ~= nil then
  L2_2 = L2_2:lower()
  if StringEndsWith(L2_2, ".js") or StringEndsWith(L2_2, ".cmd") or StringEndsWith(L2_2, ".bat") or StringEndsWith(L2_2, ".vbs") or contains(L2_2, L8_8) then
  end
end
if true == false and L3_3 ~= nil then
  L3_3 = L3_3:lower()
  if contains(L3_3, L8_8) then
  end
end
if true == true then
  L5_5 = L5_5:match("\\([^\\]+)$"):lower()
  L6_6 = L6_6 + 1
  L7_7 = L7_7 - 1
  if type(({
    [1] = {
      "explorer.exe",
      "write.exe",
      "zipfldr.dll"
    },
    [2] = "zipfldr.dll",
    [4] = "shell32.dll",
    [5] = "imageres.dll",
    [37] = "shell32.dll",
    [39] = "shell32.dll",
    [66] = "imageres.dll",
    [154] = "imageres.dll",
    [14] = "msedge.exe"
  })[L6_6]) ~= "table" and ({
    [1] = {
      "explorer.exe",
      "write.exe",
      "zipfldr.dll"
    },
    [2] = "zipfldr.dll",
    [4] = "shell32.dll",
    [5] = "imageres.dll",
    [37] = "shell32.dll",
    [39] = "shell32.dll",
    [66] = "imageres.dll",
    [154] = "imageres.dll",
    [14] = "msedge.exe"
  })[L6_6]:sub(1, #({
    [1] = {
      "explorer.exe",
      "write.exe",
      "zipfldr.dll"
    },
    [2] = "zipfldr.dll",
    [4] = "shell32.dll",
    [5] = "imageres.dll",
    [37] = "shell32.dll",
    [39] = "shell32.dll",
    [66] = "imageres.dll",
    [154] = "imageres.dll",
    [14] = "msedge.exe"
  })[L6_6] - L7_7) == L5_5 then
  elseif type(({
    [1] = {
      "explorer.exe",
      "write.exe",
      "zipfldr.dll"
    },
    [2] = "zipfldr.dll",
    [4] = "shell32.dll",
    [5] = "imageres.dll",
    [37] = "shell32.dll",
    [39] = "shell32.dll",
    [66] = "imageres.dll",
    [154] = "imageres.dll",
    [14] = "msedge.exe"
  })[L6_6]) == "table" then
    for _FORV_14_ = 1, #({
      [1] = {
        "explorer.exe",
        "write.exe",
        "zipfldr.dll"
      },
      [2] = "zipfldr.dll",
      [4] = "shell32.dll",
      [5] = "imageres.dll",
      [37] = "shell32.dll",
      [39] = "shell32.dll",
      [66] = "imageres.dll",
      [154] = "imageres.dll",
      [14] = "msedge.exe"
    })[L6_6] do
      if ({
        [1] = {
          "explorer.exe",
          "write.exe",
          "zipfldr.dll"
        },
        [2] = "zipfldr.dll",
        [4] = "shell32.dll",
        [5] = "imageres.dll",
        [37] = "shell32.dll",
        [39] = "shell32.dll",
        [66] = "imageres.dll",
        [154] = "imageres.dll",
        [14] = "msedge.exe"
      })[L6_6][_FORV_14_]:sub(1, #({
        [1] = {
          "explorer.exe",
          "write.exe",
          "zipfldr.dll"
        },
        [2] = "zipfldr.dll",
        [4] = "shell32.dll",
        [5] = "imageres.dll",
        [37] = "shell32.dll",
        [39] = "shell32.dll",
        [66] = "imageres.dll",
        [154] = "imageres.dll",
        [14] = "msedge.exe"
      })[L6_6][_FORV_14_] - L7_7) == L5_5 then
        break
      end
    end
  end
  if true == true then
    return mp.INFECTED
  end
end
return mp.CLEAN
