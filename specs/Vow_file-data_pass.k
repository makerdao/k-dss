requires "verification.k"

module 999136B833616CBB4211F493D5839451F3FBD0DEE99FDF00CD8B82417214B41F
  imports VERIFICATION

// Vow_file-data
rule [Vow.file-data.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> .ByteArray </output>
      <statusCode> _ => EVMC_SUCCESS </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Vow_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vow_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("file", #bytes32(ABI_what), #uint256(ABI_data)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ABI_what =/=Int 53997340957412429895067051750943621944153400880766621884449106990766040809472 </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> false </static>
        <callDepth> VCallDepth </callDepth>
      </callState>
      <substate>
        <selfDestruct> VSelfDestruct </selfDestruct>
        <log> _ => ?_ </log>
        <refund> Vrefund => ?_ </refund>
      </substate>
      <gasPrice> _ </gasPrice>
      <origin> ORIGIN_ID </origin>
      <blockhashes> _ </blockhashes>
      <block>
        <previousHash> _ </previousHash>
        <ommersHash> _ </ommersHash>
        <coinbase> _ </coinbase>
        <stateRoot> _ </stateRoot>
        <transactionsRoot> _ </transactionsRoot>
        <receiptsRoot> _ </receiptsRoot>
        <logsBloom> _ </logsBloom>
        <difficulty> _ </difficulty>
        <number> BLOCK_NUMBER </number>
        <gasLimit> _ </gasLimit>
        <gasUsed> _ </gasUsed>
        <timestamp> TIME </timestamp>
        <extraData> _ </extraData>
        <mixHash> _ </mixHash>
        <blockNonce> _ </blockNonce>
        <ommerBlockHeaders> _ </ommerBlockHeaders>
      </block>
    </evm>
    <network>
      <chainID> VChainId </chainID>
      <activeAccounts> SetItem(ACCT_ID)
      SetItem(1)
      SetItem(2)
      SetItem(3)
      SetItem(4)
      SetItem(5)
      SetItem(6)
      SetItem(7)
      SetItem(8)
      SetItem(9) _ </activeAccounts>
      <accounts>
        <account>
          <acctID> ACCT_ID </acctID>
          <balance> ACCT_ID_balance </balance>
          <code> Vow_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vow.wait <- (#if ABI_what ==Int #string2Word("wait") #then ABI_data #else Wait #fi) ] [ #Vow.dump <- (#if ABI_what ==Int #string2Word("dump") #then ABI_data #else Dump #fi) ] [ #Vow.sump <- (#if ABI_what ==Int #string2Word("sump") #then ABI_data #else Sump #fi) ] [ #Vow.bump <- (#if ABI_what ==Int #string2Word("bump") #then ABI_data #else Bump #fi) ] [ #Vow.hump <- (#if ABI_what ==Int #string2Word("hump") #then ABI_data #else Hump #fi) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> 1 </acctID>
          <balance> ECREC_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 2 </acctID>
          <balance> SHA256_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 3 </acctID>
          <balance> RIP160_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 4 </acctID>
          <balance> ID_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 5 </acctID>
          <balance> MODEXP_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 6 </acctID>
          <balance> ECADD_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 7 </acctID>
          <balance> ECMUL_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 8 </acctID>
          <balance> ECPAIRING_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 9 </acctID>
          <balance> BLAKE2_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
       ... 
      </accounts>
      <txOrder> _ </txOrder>
      <txPending> _ </txPending>
      <messages> _ </messages>
    </network>
  </ethereum>
requires #rangeAddress(ACCT_ID)
andBool ACCT_ID =/=Int 0
andBool #notPrecompileAddress(ACCT_ID)
andBool #rangeAddress(CALLER_ID)
andBool #rangeAddress(ORIGIN_ID)
andBool #rangeUInt(256, TIME)
andBool #rangeUInt(256, ACCT_ID_balance)
andBool #rangeUInt(256, ECREC_BAL)
andBool #rangeUInt(256, SHA256_BAL)
andBool #rangeUInt(256, RIP160_BAL)
andBool #rangeUInt(256, ID_BAL)
andBool #rangeUInt(256, MODEXP_BAL)
andBool #rangeUInt(256, ECADD_BAL)
andBool #rangeUInt(256, ECMUL_BAL)
andBool #rangeUInt(256, ECPAIRING_BAL)
andBool #rangeUInt(256, BLAKE2_BAL)
andBool VCallDepth <=Int 1024
andBool #rangeUInt(256, VCallValue)
andBool #rangeUInt(256, VChainId)

  andBool (#rangeBytes(32, ABI_what)
  andBool (#rangeUInt(256, ABI_data)
  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Wait)
  andBool (#rangeUInt(256, Dump)
  andBool (#rangeUInt(256, Sump)
  andBool (#rangeUInt(256, Bump)
  andBool (#rangeUInt(256, Hump)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool ((May ==Int 1)
  andBool (((ABI_what ==Int #string2Word("wait")) orBool (ABI_what ==Int #string2Word("dump")) orBool (ABI_what ==Int #string2Word("sump")) orBool (ABI_what ==Int #string2Word("bump")) orBool (ABI_what ==Int #string2Word("hump")))
  andBool ((VCallValue ==Int 0)))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vow.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vow.wait) ==Int Wait
  andBool #lookup(ACCT_ID_STORAGE, #Vow.dump) ==Int Dump
  andBool #lookup(ACCT_ID_STORAGE, #Vow.sump) ==Int Sump
  andBool #lookup(ACCT_ID_STORAGE, #Vow.bump) ==Int Bump
  andBool #lookup(ACCT_ID_STORAGE, #Vow.hump) ==Int Hump
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.wait) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.dump) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.sump) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.bump) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.hump) ==Int Junk_5
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.wait
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.dump
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.sump
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.bump
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.hump
  andBool #Vow.wait =/=Int #Vow.dump
  andBool #Vow.wait =/=Int #Vow.sump
  andBool #Vow.wait =/=Int #Vow.bump
  andBool #Vow.wait =/=Int #Vow.hump
  andBool #Vow.dump =/=Int #Vow.sump
  andBool #Vow.dump =/=Int #Vow.bump
  andBool #Vow.dump =/=Int #Vow.hump
  andBool #Vow.sump =/=Int #Vow.bump
  andBool #Vow.sump =/=Int #Vow.hump
  andBool #Vow.bump =/=Int #Vow.hump 

endmodule
