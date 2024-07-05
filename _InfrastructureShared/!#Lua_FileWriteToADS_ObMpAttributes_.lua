local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:Context/FileInADS.A!commonadslist"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 4096 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.bitor
    L3_3 = L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
    L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
    L2_2 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
    if L2_2 ~= nil then
      L3_3 = #L2_2
      if L3_3 >= 2 then
        L3_3 = L2_2.find
        L3_3 = L3_3(L2_2, ":", 1, true)
        if L3_3 and L1_1 ~= nil then
          L3_3 = #L1_1
          if L3_3 >= 2 then
            L3_3 = L1_1.sub
            L3_3 = L3_3(L1_1, 1, 8)
            if L3_3 == "\\device\\" then
              L3_3 = MpCommon
              L3_3 = L3_3.PathToWin32Path
              L3_3 = L3_3(L1_1)
              L1_1 = L3_3
              if not L1_1 then
                L3_3 = mp
                L3_3 = L3_3.CLEAN
                return L3_3
              end
              L3_3 = string
              L3_3 = L3_3.lower
              L3_3 = L3_3(L1_1)
              L1_1 = L3_3
            end
            L3_3 = L1_1
            L3_3 = L3_3 .. "\\" .. L2_2
            if mp.get_mpattribute("BM_MZ_FILE") then
              if L0_0 == "ctxbace.exe" then
                return mp.CLEAN
              end
              mp.set_mpattribute("BM_PeFileInAlternateDataStream")
              if not MpCommon.QueryPersistContext(L3_3, "PeWrite2AlternateDataStream") then
                MpCommon.AppendPersistContext(L3_3, "PeWrite2AlternateDataStream", 100)
              end
            else
              if L1_1:find("tasks\\microsoft\\windows\\pla", 1, true) then
                return mp.CLEAN
              elseif L1_1:find(":\\programdata\\", 1, true) then
                return mp.CLEAN
              elseif L2_2 == "ngen.log" then
                return mp.CLEAN
              elseif L2_2:find("wsddfac.sys:x5zn8agxs4", 1, true) then
                return mp.CLEAN
              elseif L2_2:find(":6e53bff5-0001-412b-8407-e3aede763511", 1, true) then
                return mp.CLEAN
              elseif L2_2:find(":4c8cc155-6c1e-11d1-8e41-00c04fb9386d", 1, true) then
                return mp.CLEAN
              elseif L2_2:find(":59828bbb-3f72-4c1b-a420-b51ad66eb5d3", 1, true) then
                return mp.CLEAN
              elseif L2_2:find("%.blg:.+;summaryinformation") then
                return mp.CLEAN
              elseif L0_0 == "dropbox.exe" then
                if L2_2:find(":com.dropbox.") then
                  return mp.CLEAN
                end
              elseif L0_0 == "codemeter.exe" then
                if L2_2:find(":cm_", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "gamecenter.exe" then
                if L2_2:find(":gcdigest0", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "launchpad.exe" then
                if L2_2:find(":crc", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "avp.exe" then
                if L2_2:find(":k[eia][sv]extended") then
                  return mp.CLEAN
                end
              elseif L0_0 == "wlmail.exe" then
                if L2_2:find(":oestandardproperty", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "defendpointservice.exe" then
                if L2_2:find(":pg$secure", 1, true) then
                  return mp.CLEAN
                end
              elseif L2_2:find(":logts", 1, true) or L2_2:find(":aidfilter", 1, true) then
                if ({
                  ["xaggregator.exe"] = true,
                  ["xtableserver.exe"] = true,
                  ["azurebatchscheduler.exe"] = true,
                  ["csm.exe"] = true,
                  ["storagelogagent.exe"] = true,
                  ["startcosmos.exe"] = true,
                  ["xgossip.exe"] = true,
                  ["nephosfile.exe"] = true,
                  ["storagediagnostics.exe"] = true,
                  ["poolserver.exe"] = true,
                  ["wij.exe"] = true,
                  ["xsmbserver.exe"] = true,
                  ["xcomputeprocessscheduler.exe"] = true,
                  ["xcomputejobscheduler.exe"] = true,
                  ["xcachenode.exe"] = true,
                  ["xfenativehdfs.exe"] = true
                })[L0_0] then
                  return mp.CLEAN
                end
              elseif L0_0 == "nutstoreclient.exe" then
                if L2_2:find("nssyncsc:nssyncfp", 1, true) or L2_2:find(":nsorigdir", 1, true) or L2_2:find(":nsph", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "smartbytenetworkservice.exe" then
                if L2_2:find("png:originalpath", 1, true) then
                  return mp.CLEAN
                end
              elseif L0_0 == "mscorsvw.exe" then
                return mp.CLEAN
              end
              if L2_2:find(":favicon", 1, true) then
                mp.set_mpattribute("BM_FaviconAlternateDataStream")
              else
                mp.set_mpattribute("BM_NonPeFileInAlternateDataStream")
              end
              if not MpCommon.QueryPersistContext(L3_3, "FileWrite2AlternateDataStream") then
                MpCommon.AppendPersistContext(L3_3, "FileWrite2AlternateDataStream", 100)
              end
            end
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
