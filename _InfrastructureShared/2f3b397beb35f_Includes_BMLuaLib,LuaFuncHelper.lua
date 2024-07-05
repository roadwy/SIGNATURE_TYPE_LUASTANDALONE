local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = 7
L1_1 = "massservicestop"
L2_2 = "massservicestop_score"
L3_3 = ""
L4_4 = {}
L5_5 = nil
L6_6 = this_sigattrlog
L6_6 = L6_6[1]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[1]
  L6_6 = L6_6.utf8p2
  if L6_6 ~= nil then
    L6_6 = this_sigattrlog
    L6_6 = L6_6[1]
    L5_5 = L6_6.utf8p2
  end
end
L6_6 = {
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13
}
L7_7 = "sophosstopservices.bat"
L11_11 = "microsoft intune management extension"
L12_12 = "smstspowershellscripts"
L7_7 = contains
L7_7 = L7_7(L8_8, L9_9)
if L7_7 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = this_sigattrlog
L7_7 = L7_7[2]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[2]
  L3_3 = L7_7.utf8p2
  L7_7 = #L4_4
  L7_7 = L7_7 + 1
  L4_4[L7_7] = L8_8
else
  L7_7 = this_sigattrlog
  L7_7 = L7_7[3]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = this_sigattrlog
    L7_7 = L7_7[3]
    L3_3 = L7_7.utf8p2
    L7_7 = #L4_4
    L7_7 = L7_7 + 1
    L4_4[L7_7] = L8_8
  else
    L7_7 = this_sigattrlog
    L7_7 = L7_7[4]
    L7_7 = L7_7.matched
    if L7_7 then
      L7_7 = this_sigattrlog
      L7_7 = L7_7[4]
      L3_3 = L7_7.utf8p2
      L7_7 = #L4_4
      L7_7 = L7_7 + 1
      L4_4[L7_7] = L8_8
    else
      L7_7 = this_sigattrlog
      L7_7 = L7_7[5]
      L7_7 = L7_7.matched
      if L7_7 then
        L7_7 = this_sigattrlog
        L7_7 = L7_7[5]
        L3_3 = L7_7.utf8p2
        L7_7 = #L4_4
        L7_7 = L7_7 + 1
        L4_4[L7_7] = L8_8
      else
        L7_7 = this_sigattrlog
        L7_7 = L7_7[7]
        L7_7 = L7_7.matched
        if L7_7 then
          L7_7 = this_sigattrlog
          L7_7 = L7_7[7]
          L3_3 = L7_7.utf8p2
          L7_7 = #L4_4
          L7_7 = L7_7 + 1
          L4_4[L7_7] = L8_8
        else
          L7_7 = this_sigattrlog
          L7_7 = L7_7[8]
          L7_7 = L7_7.matched
          if L7_7 then
            L7_7 = this_sigattrlog
            L7_7 = L7_7[8]
            L3_3 = L7_7.utf8p2
            L7_7 = #L4_4
            L7_7 = L7_7 + 1
            L4_4[L7_7] = L8_8
          else
            L7_7 = this_sigattrlog
            L7_7 = L7_7[6]
            L7_7 = L7_7.matched
            if L7_7 then
              L7_7 = this_sigattrlog
              L7_7 = L7_7[6]
              L3_3 = L7_7.utf8p2
              L7_7 = string
              L7_7 = L7_7.match
              L7_7 = L7_7(L8_8, L9_9)
              L11_11 = 1
              L12_12 = true
              if L8_8 then
                L11_11 = ""
                L7_7 = L8_8
                L11_11 = ","
                L19_19 = L9_9(L10_10, L11_11)
                for L11_11, L12_12 in L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L9_9(L10_10, L11_11)) do
                  L4_4[L13_13] = L12_12
                end
              end
            else
              L7_7 = this_sigattrlog
              L7_7 = L7_7[9]
              L7_7 = L7_7.matched
              if L7_7 then
                L7_7 = this_sigattrlog
                L7_7 = L7_7[9]
                L3_3 = L7_7.utf8p2
                L7_7 = #L4_4
                L7_7 = L7_7 + 1
                L4_4[L7_7] = L8_8
              else
                L7_7 = this_sigattrlog
                L7_7 = L7_7[10]
                L7_7 = L7_7.matched
                if L7_7 then
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[10]
                  L3_3 = L7_7.utf8p2
                  L7_7 = #L4_4
                  L7_7 = L7_7 + 1
                  L4_4[L7_7] = L8_8
                else
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[11]
                  L7_7 = L7_7.matched
                  if L7_7 then
                    L7_7 = this_sigattrlog
                    L7_7 = L7_7[11]
                    L3_3 = L7_7.utf8p2
                    L7_7 = #L4_4
                    L7_7 = L7_7 + 1
                    L4_4[L7_7] = L8_8
                  else
                    L7_7 = this_sigattrlog
                    L7_7 = L7_7[12]
                    L7_7 = L7_7.matched
                    if L7_7 then
                      L7_7 = this_sigattrlog
                      L7_7 = L7_7[12]
                      L3_3 = L7_7.utf8p2
                      L7_7 = #L4_4
                      L7_7 = L7_7 + 1
                      L4_4[L7_7] = L8_8
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
L7_7 = {
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  L18_18,
  L19_19,
  "msolap$sql_2008",
  "msolap$system_bgc",
  "msolap$tps",
  "msolap$tpsama",
  "mssql$bkupexec",
  "mssql$ecwdb2",
  "mssql$practicemgt",
  "mssql$practticebgc",
  "mssql$prod",
  "mssql$profxengagement",
  "mssql$sbsmonitoring",
  "mssql$sharepoint",
  "mssql$sql_2008",
  "mssql$sqlexpress",
  "mssql$system_bgc",
  "mssql$tps",
  "mssql$tpsama",
  "mssql$veeamsql2008r2",
  "mssql$veeamsql2012",
  "msftesql$sqlexpress",
  "msolap$citrix",
  "mssql$citrix",
  "mssql$isars",
  "mssql$microsoft##wid",
  "mssql$msfw",
  "mssql$optima",
  "mssql$progid",
  "mssql$sqlexpress2014",
  "mssql$veeamsql2016",
  "mssql$wolterskluwer",
  "mssqlfdlauncher$citrix",
  "mssqlfdlauncher$optima",
  "mssql",
  "mssqlfdlauncher",
  "mssqlfdlauncher$profxengagement",
  "mssqlfdlauncher$sbsmonitoring",
  "mssqlfdlauncher$sharepoint",
  "mssqlfdlauncher$sql_2008",
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  L18_18,
  L19_19,
  "sqlagent$cxdb",
  "sqlagent$ecwdb2",
  "sqlagent$isars",
  "sqlagent$msfw",
  "sqlagent$optima",
  "sqlagent$practticebgc",
  "sqlagent$practticemgt",
  "sqlagent$prod",
  "sqlagent$progid",
  "sqlagent$profxengagement",
  "sqlagent$sbsmonitoring",
  "sqlagent$sharepoint",
  "sqlagent$sql_2008",
  "sqlagent$sqlexpress",
  "sqlagent$system_bgc",
  "sqlagent$tps",
  "sqlagent$tpsama",
  "sqlagent$veeamsql2008r2",
  "sqlagent$veeamsql2012",
  "sqlagent$wolterskluwer",
  "sqlbrowser",
  "sqlsafeolrservice",
  "sqlserveragent",
  "sqltelemetry",
  "sqltelemetry$bvms",
  "sqltelemetry$ecwdb2",
  "sqltelemetry$hl",
  "sqltelemetry$sdpro_v4_sql",
  "sqltelemetry$veeamsql2016",
  "mssql$vim_sqlexp",
  "postgresql-9.5",
  "postgresql-x64-9.4",
  "reportserver$v4sqlexpress",
  "sagemysql",
  "reportserver$sql_2008",
  "mssql$sophos",
  "sqlagent$soph",
  "isqlplussvc.exe",
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17
}
L11_11 = "mssql$veeamsql2008r2"
L12_12 = "sqlagent$veeamsql2008r2"
L16_16 = "msdtsserver100"
L17_17 = "msdtsserver110"
L18_18 = "msdtsserver130"
L19_19 = "msftesql$prod"
L11_11 = "mssqlserver"
L12_12 = "mssqlserveradhelper"
L16_16 = "mysql80"
L17_17 = "sqlagent"
L18_18 = "sqlagent$bkupexec"
L19_19 = "sqlagent$citrix_metaframe"
L11_11 = "mysqld.exe"
L12_12 = "sqlagent.exe"
L16_16 = "sqlwriter.exe"
L17_17 = "sql"
L11_11 = "avgadminserver"
L12_12 = "avp18.0.0"
L16_16 = "wbengine"
L17_17 = "wbengine"
L18_18 = "nanoservicemain"
L19_19 = "nvspwmi"
L11_11 = "acronisagent"
L12_12 = "antivirus"
L16_16 = "ekrn"
L17_17 = "ekrnepsw"
L18_18 = "epintegrationservice"
L19_19 = "epprotectedservice"
L11_11 = "mcshield"
L12_12 = "mctaskmanager"
L16_16 = "mr2kserv"
L17_17 = "mssql$sophos"
L18_18 = "sacsvr"
L19_19 = "savadminservice"
L11_11 = "acronis vss provider"
L12_12 = "core browsing protection"
L16_16 = "veeam backup catalog data service"
L17_17 = "zoolz 2 service"
L18_18 = "acrsch2svc"
L19_19 = "arsm"
L11_11 = "vmictimesync"
L12_12 = "vmicvss"
L16_16 = "quickbooksdb2"
L17_17 = "quickbooksdb3"
L18_18 = "quickbooksdb4"
L19_19 = "quickbooksdb5"
L11_11 = "smcinst"
L12_12 = "smcservice"
L16_16 = "truekey"
L17_17 = "truekeyscheduler"
L18_18 = "truekeyservicehel"
L19_19 = "wrsvc"
L11_11 = 0
L12_12 = 0
for L16_16, L17_17 in L13_13(L14_14) do
  L18_18 = string
  L19_19 = "lower"
  L18_18 = L18_18[L19_19]
  L19_19 = L17_17
  L18_18 = L18_18(L19_19)
  L17_17 = L18_18
  L18_18 = L9_9[L17_17]
  if L18_18 then
  end
  L18_18 = L7_7[L17_17]
  if L18_18 then
    L11_11 = 2
  end
  L18_18 = L8_8[L17_17]
  if L18_18 then
    L12_12 = 3
  end
  L18_18 = 0
  if L11_11 == L18_18 then
    L18_18 = 0
    if L12_12 == L18_18 then
      L18_18 = 0
      if L10_10 == L18_18 then
        L18_18 = mp
        L18_18 = L18_18.CLEAN
        return L18_18
      end
    end
  end
  L18_18 = MpCommon
  L19_19 = "QueryPersistContextNoPath"
  L18_18 = L18_18[L19_19]
  L19_19 = L1_1
  L18_18 = L18_18(L19_19, L17_17)
  if not L18_18 then
    L19_19 = L11_11 + L12_12
    L19_19 = L19_19 + L10_10
    MpCommon.AppendPersistContextNoPath(L1_1, L17_17, 120)
    MpCommon.AppendPersistContextNoPath(L2_2, L19_19, 120)
  end
end
if L0_0 < L13_13 then
  if L14_14 > L15_15 then
    L16_16 = "concat"
    L16_16 = MpCommon
    L17_17 = "GetPersistContextNoPath"
    L16_16 = L16_16[L17_17]
    L17_17 = L1_1
    L16_16 = L16_16(L17_17)
    L17_17 = ";"
    L4_4 = L15_15
    L16_16 = "add_related_string"
    L16_16 = "service_stop"
    L17_17 = L4_4
    L18_18 = bm
    L19_19 = "RelatedStringBMReport"
    L18_18 = L18_18[L19_19]
    L15_15(L16_16, L17_17, L18_18)
    L16_16 = "SetPersistContextNoPath"
    L16_16 = L1_1
    L17_17 = {}
    L18_18 = 1
    L15_15(L16_16, L17_17, L18_18)
    L16_16 = "INFECTED"
    return L15_15
  end
end
return L15_15
