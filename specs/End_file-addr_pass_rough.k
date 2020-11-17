requires "verification.k"

module FA2FCC2622D7ED6B30EFBA0F2CE55B8FD939B3230EB82099163214AE4EECCFDB
  imports VERIFICATION

// End_file-addr
claim [End.file-addr.pass.rough]:
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
        <program> End_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(End_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("file", #bytes32(ABI_what), #address(ABI_data)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ?_ </gas>
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
          <code> End_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #End.vat <- (#if ABI_what ==Int #string2Word("vat")  #then ABI_data #else Vat #fi) ] [ #End.cat <- (#if ABI_what ==Int #string2Word("cat")  #then ABI_data #else Cat #fi) ] [ #End.vow <- (#if ABI_what ==Int #string2Word("vow")  #then ABI_data #else Vow #fi) ] [ #End.pot <- (#if ABI_what ==Int #string2Word("pot")  #then ABI_data #else Pot #fi) ] [ #End.spot <- (#if ABI_what ==Int #string2Word("spot") #then ABI_data #else Spot #fi) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_End => ?_ </nonce>
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
  andBool (#rangeAddress(ABI_data)
  andBool (#rangeUInt(256, May)
  andBool (#rangeAddress(Vat)
  andBool (#rangeAddress(Cat)
  andBool (#rangeAddress(Vow)
  andBool (#rangeAddress(Pot)
  andBool (#rangeAddress(Spot)
  andBool (#rangeUInt(256, Live)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#notPrecompileAddress(Vat)
  andBool (#notPrecompileAddress(Cat)
  andBool (#notPrecompileAddress(Vow)
  andBool (#notPrecompileAddress(Pot)
  andBool (#notPrecompileAddress(Spot)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool ((May ==Int 1)
  andBool ((Live ==Int 1)
  andBool ((VCallValue ==Int 0)
  andBool (((ABI_what ==Int #string2Word("vat")) orBool (ABI_what ==Int #string2Word("cat")) orBool (ABI_what ==Int #string2Word("vow")) orBool (ABI_what ==Int #string2Word("pot")) orBool (ABI_what ==Int #string2Word("spot")))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #End.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #End.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #End.cat) ==Int Cat
  andBool #lookup(ACCT_ID_STORAGE, #End.vow) ==Int Vow
  andBool #lookup(ACCT_ID_STORAGE, #End.pot) ==Int Pot
  andBool #lookup(ACCT_ID_STORAGE, #End.spot) ==Int Spot
  andBool #lookup(ACCT_ID_STORAGE, #End.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.vat) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.cat) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.vow) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.pot) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.spot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.live) ==Int Junk_6
  andBool #End.wards[CALLER_ID] =/=Int #End.vat
  andBool #End.wards[CALLER_ID] =/=Int #End.cat
  andBool #End.wards[CALLER_ID] =/=Int #End.vow
  andBool #End.wards[CALLER_ID] =/=Int #End.pot
  andBool #End.wards[CALLER_ID] =/=Int #End.spot
  andBool #End.wards[CALLER_ID] =/=Int #End.live
  andBool #End.vat =/=Int #End.cat
  andBool #End.vat =/=Int #End.vow
  andBool #End.vat =/=Int #End.pot
  andBool #End.vat =/=Int #End.spot
  andBool #End.vat =/=Int #End.live
  andBool #End.cat =/=Int #End.vow
  andBool #End.cat =/=Int #End.pot
  andBool #End.cat =/=Int #End.spot
  andBool #End.cat =/=Int #End.live
  andBool #End.vow =/=Int #End.pot
  andBool #End.vow =/=Int #End.spot
  andBool #End.vow =/=Int #End.live
  andBool #End.pot =/=Int #End.spot
  andBool #End.pot =/=Int #End.live
  andBool #End.spot =/=Int #End.live 

endmodule
