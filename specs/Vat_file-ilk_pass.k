requires "verification.k"

module 07276451BE40054D06FBB2D9E06BBB7F82568642097708D04A294501B6683E39
  imports VERIFICATION

// Vat_file-ilk
rule [Vat.file-ilk.pass]:
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
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("file", #bytes32(ABI_ilk), #bytes32(ABI_what), #uint256(ABI_data)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ABI_what =/=Int 52214633679529120849900229181229190823836184335472955378023737308807130251264 </gas>
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
          <code> Vat_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.ilks[ABI_ilk].spot <- (#if ABI_what ==Int #string2Word("spot") #then ABI_data #else Spot #fi) ] [ #Vat.ilks[ABI_ilk].line <- (#if ABI_what ==Int #string2Word("line") #then ABI_data #else Line #fi) ] [ #Vat.ilks[ABI_ilk].dust <- (#if ABI_what ==Int #string2Word("dust") #then ABI_data #else Dust #fi) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vat => ?_ </nonce>
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

  andBool (#rangeBytes(32, ABI_ilk)
  andBool (#rangeBytes(32, ABI_what)
  andBool (#rangeUInt(256, ABI_data)
  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Spot)
  andBool (#rangeUInt(256, Line)
  andBool (#rangeUInt(256, Dust)
  andBool (#rangeUInt(256, Live)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool ((May ==Int 1)
  andBool ((Live ==Int 1)
  andBool (((ABI_what ==Int #string2Word("spot")) orBool (ABI_what ==Int #string2Word("line")) orBool (ABI_what ==Int #string2Word("dust")))
  andBool ((VCallValue ==Int 0)))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Spot
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Line
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Dust
  andBool #lookup(ACCT_ID_STORAGE, #Vat.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.live) ==Int Junk_4
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.ilks[ABI_ilk].spot
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.live
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.live
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.live
  andBool #Vat.ilks[ABI_ilk].dust =/=Int #Vat.live 

endmodule
