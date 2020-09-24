requires "verification.k"

module 729E3AE148A58C2DE27A116155AE27264D134DBCC117DDC26D3C2B2626791F29
  imports VERIFICATION

// End_skim-E
rule [End.skim-E.fail.rough]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => ?_ </output>
      <statusCode> _ => ?FAILURE:EndStatusCode </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> End_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(End_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("skim", #bytes32(ABI_ilk), #address(ABI_urn)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ?_ </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> _ </static>
        <callDepth> VCallDepth => ?_ </callDepth>
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
      SetItem(Vat)
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
          <storage> ACCT_ID_STORAGE => ?_ACCT_ID_STORAGE </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_End => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => ?_Vat_STORAGE </storage>
          <origStorage> Vat_ORIG_STORAGE </origStorage>
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
  andBool (#rangeAddress(ABI_urn)
  andBool (#rangeAddress(Vat)
  andBool (#rangeUInt(256, Tag)
  andBool (#rangeUInt(256, Art_i)
  andBool (#rangeUInt(256, Rate_i)
  andBool (#rangeUInt(256, Spot_i)
  andBool (#rangeUInt(256, Line_i)
  andBool (#rangeUInt(256, Dust_i)
  andBool (#rangeUInt(256, Ink_iu)
  andBool (#rangeUInt(256, Art_iu)
  andBool (#rangeUInt(256, Vat_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((VCallValue ==Int 0)
  andBool ((Tag =/=Int 0)
  andBool ((VCallDepth <Int 1024)
  andBool ((#rangeUInt(256, Rate_i *Int Art_iu))
  andBool ((Vat =/=Int 0)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool (#rangeUInt(256, Junk_7)
  andBool (#rangeUInt(256, Junk_8))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #End.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #End.tag[ABI_ilk]) ==Int Tag
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.vat) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.tag[ABI_ilk]) ==Int Junk_1
  andBool #End.vat =/=Int #End.tag[ABI_ilk]
  andBool #lookup(Vat_STORAGE, #Vat.ilks[ABI_ilk].Art) ==Int Art_i
  andBool #lookup(Vat_STORAGE, #Vat.ilks[ABI_ilk].rate) ==Int Rate_i
  andBool #lookup(Vat_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Spot_i
  andBool #lookup(Vat_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Line_i
  andBool #lookup(Vat_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Dust_i
  andBool #lookup(Vat_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].ink) ==Int Ink_iu
  andBool #lookup(Vat_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].art) ==Int Art_iu
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.ilks[ABI_ilk].Art) ==Int Junk_2
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.ilks[ABI_ilk].rate) ==Int Junk_3
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Junk_4
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Junk_5
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Junk_6
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].ink) ==Int Junk_7
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].art) ==Int Junk_8
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].rate
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].spot
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.urns[ABI_ilk][ABI_urn].ink
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].spot
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.urns[ABI_ilk][ABI_urn].ink
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.urns[ABI_ilk][ABI_urn].ink
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.urns[ABI_ilk][ABI_urn].ink
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool #Vat.ilks[ABI_ilk].dust =/=Int #Vat.urns[ABI_ilk][ABI_urn].ink
  andBool #Vat.ilks[ABI_ilk].dust =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool #Vat.urns[ABI_ilk][ABI_urn].ink =/=Int #Vat.urns[ABI_ilk][ABI_urn].art
  andBool notBool (
    ((#rangeUInt(256, ((Rate_i:Int *Int Art_iu:Int) /Int #Ray) *Int Tag:Int)))
  ) 
ensures
?FAILURE =/=K EVMC_SUCCESS

// Vat_ilks
rule [Vat.ilks.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, Ilk_Art) ++ #buf(32, Ilk_rate) ++ #buf(32, Ilk_spot) ++ #buf(32, Ilk_line) ++ #buf(32, Ilk_dust) </output>
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
        <callData> #abiCallData("ilks", #bytes32(ABI_ilk)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int 4594 ) ) </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> _ </static>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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
  andBool (#rangeUInt(256, Ilk_Art)
  andBool (#rangeUInt(256, Ilk_rate)
  andBool (#rangeUInt(256, Ilk_spot)
  andBool (#rangeUInt(256, Ilk_line)
  andBool (#rangeUInt(256, Ilk_dust)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool ((VCallValue ==Int 0))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].Art) ==Int Ilk_Art
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].rate) ==Int Ilk_rate
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Ilk_spot
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Ilk_line
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Ilk_dust
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].Art) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].rate) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].spot) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].line) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_ilk].dust) ==Int Junk_4
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].rate
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].spot
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].Art =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].spot
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].rate =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].line
  andBool #Vat.ilks[ABI_ilk].spot =/=Int #Vat.ilks[ABI_ilk].dust
  andBool #Vat.ilks[ABI_ilk].line =/=Int #Vat.ilks[ABI_ilk].dust 
[trusted]


// Vat_urns
rule [Vat.urns.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, Ink_iu) ++ #buf(32, Art_iu) </output>
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
        <callData> #abiCallData("urns", #bytes32(ABI_ilk), #address(ABI_urn)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int 2153 ) ) </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> _ </static>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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
  andBool (#rangeAddress(ABI_urn)
  andBool (#rangeUInt(256, Ink_iu)
  andBool (#rangeUInt(256, Art_iu)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool ((VCallValue ==Int 0)))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].ink) ==Int Ink_iu
  andBool #lookup(ACCT_ID_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].art) ==Int Art_iu
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].ink) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.urns[ABI_ilk][ABI_urn].art) ==Int Junk_1
  andBool #Vat.urns[ABI_ilk][ABI_urn].ink =/=Int #Vat.urns[ABI_ilk][ABI_urn].art 
[trusted]


endmodule
