requires "verification.k"

module 19A187AA0640CBD171AB9B6E372E079F7862D960DD86EF5F05FF281260EA171F
  imports VERIFICATION

// Vat_frob-same-zero-dart
rule [Vat.frob-same-zero-dart.fail.rough]:
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
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("frob", #bytes32(ABI_i), #address(ABI_u), #address(ABI_v), #address(ABI_w), #int256(ABI_dink), #int256(ABI_dart)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ?_ </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> false </static>
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
          <storage> ACCT_ID_STORAGE => ?_ACCT_ID_STORAGE </storage>
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

  andBool (#rangeBytes(32, ABI_i)
  andBool (#rangeAddress(ABI_u)
  andBool (#rangeAddress(ABI_v)
  andBool (#rangeAddress(ABI_w)
  andBool (#rangeSInt(256, ABI_dink)
  andBool (#rangeSInt(256, ABI_dart)
  andBool (#rangeUInt(256, Ilk_rate)
  andBool (#rangeUInt(256, Ilk_line)
  andBool (#rangeUInt(256, Ilk_spot)
  andBool (#rangeUInt(256, Ilk_dust)
  andBool (#rangeUInt(256, Ilk_Art)
  andBool (#rangeUInt(256, Urn_ink)
  andBool (#rangeUInt(256, Urn_art)
  andBool (#rangeUInt(256, Gem_iu)
  andBool (#rangeUInt(256, Dai_u)
  andBool (#rangeUInt(256, Debt)
  andBool (#rangeUInt(256, Line)
  andBool (#rangeUInt(256, Can_u)
  andBool (#rangeUInt(256, Live)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_u ==Int ABI_v)
  andBool ((ABI_v ==Int ABI_w)
  andBool ((ABI_u ==Int ABI_w)
  andBool ((ABI_dink =/=Int 0)
  andBool ((ABI_dart ==Int 0)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool (#rangeUInt(256, Junk_7)
  andBool (#rangeUInt(256, Junk_8)
  andBool (#rangeUInt(256, Junk_9)
  andBool (#rangeUInt(256, Junk_10)
  andBool (#rangeUInt(256, Junk_11)
  andBool (#rangeUInt(256, Junk_12)))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_i].rate) ==Int Ilk_rate
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_i].line) ==Int Ilk_line
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_i].spot) ==Int Ilk_spot
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_i].dust) ==Int Ilk_dust
  andBool #lookup(ACCT_ID_STORAGE, #Vat.Line) ==Int Line
  andBool #lookup(ACCT_ID_STORAGE, #Vat.can[ABI_u][CALLER_ID]) ==Int Can_u
  andBool #lookup(ACCT_ID_STORAGE, #Vat.urns[ABI_i][ABI_u].ink) ==Int Urn_ink
  andBool #lookup(ACCT_ID_STORAGE, #Vat.urns[ABI_i][ABI_u].art) ==Int Urn_art
  andBool #lookup(ACCT_ID_STORAGE, #Vat.ilks[ABI_i].Art) ==Int Ilk_Art
  andBool #lookup(ACCT_ID_STORAGE, #Vat.gem[ABI_i][ABI_u]) ==Int Gem_iu
  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_u]) ==Int Dai_u
  andBool #lookup(ACCT_ID_STORAGE, #Vat.debt) ==Int Debt
  andBool #lookup(ACCT_ID_STORAGE, #Vat.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_i].rate) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_i].line) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_i].spot) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_i].dust) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.Line) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.can[ABI_u][CALLER_ID]) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.urns[ABI_i][ABI_u].ink) ==Int Junk_6
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.urns[ABI_i][ABI_u].art) ==Int Junk_7
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.ilks[ABI_i].Art) ==Int Junk_8
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.gem[ABI_i][ABI_u]) ==Int Junk_9
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_u]) ==Int Junk_10
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.debt) ==Int Junk_11
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.live) ==Int Junk_12
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.ilks[ABI_i].line
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.ilks[ABI_i].spot
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.ilks[ABI_i].dust
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.Line
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.can[ABI_u][CALLER_ID]
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.dai[ABI_u]
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.debt
  andBool #Vat.ilks[ABI_i].rate =/=Int #Vat.live
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.ilks[ABI_i].spot
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.ilks[ABI_i].dust
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.Line
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.can[ABI_u][CALLER_ID]
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.dai[ABI_u]
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.debt
  andBool #Vat.ilks[ABI_i].line =/=Int #Vat.live
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.ilks[ABI_i].dust
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.Line
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.can[ABI_u][CALLER_ID]
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.dai[ABI_u]
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.debt
  andBool #Vat.ilks[ABI_i].spot =/=Int #Vat.live
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.Line
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.can[ABI_u][CALLER_ID]
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.dai[ABI_u]
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.debt
  andBool #Vat.ilks[ABI_i].dust =/=Int #Vat.live
  andBool #Vat.Line =/=Int #Vat.can[ABI_u][CALLER_ID]
  andBool #Vat.Line =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.Line =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.Line =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.Line =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.Line =/=Int #Vat.dai[ABI_u]
  andBool #Vat.Line =/=Int #Vat.debt
  andBool #Vat.Line =/=Int #Vat.live
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.urns[ABI_i][ABI_u].ink
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.dai[ABI_u]
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.debt
  andBool #Vat.can[ABI_u][CALLER_ID] =/=Int #Vat.live
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.urns[ABI_i][ABI_u].art
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.dai[ABI_u]
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.debt
  andBool #Vat.urns[ABI_i][ABI_u].ink =/=Int #Vat.live
  andBool #Vat.urns[ABI_i][ABI_u].art =/=Int #Vat.ilks[ABI_i].Art
  andBool #Vat.urns[ABI_i][ABI_u].art =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.urns[ABI_i][ABI_u].art =/=Int #Vat.dai[ABI_u]
  andBool #Vat.urns[ABI_i][ABI_u].art =/=Int #Vat.debt
  andBool #Vat.urns[ABI_i][ABI_u].art =/=Int #Vat.live
  andBool #Vat.ilks[ABI_i].Art =/=Int #Vat.gem[ABI_i][ABI_u]
  andBool #Vat.ilks[ABI_i].Art =/=Int #Vat.dai[ABI_u]
  andBool #Vat.ilks[ABI_i].Art =/=Int #Vat.debt
  andBool #Vat.ilks[ABI_i].Art =/=Int #Vat.live
  andBool #Vat.gem[ABI_i][ABI_u] =/=Int #Vat.dai[ABI_u]
  andBool #Vat.gem[ABI_i][ABI_u] =/=Int #Vat.debt
  andBool #Vat.gem[ABI_i][ABI_u] =/=Int #Vat.live
  andBool #Vat.dai[ABI_u] =/=Int #Vat.debt
  andBool #Vat.dai[ABI_u] =/=Int #Vat.live
  andBool #Vat.debt =/=Int #Vat.live
  andBool notBool (
    ((((#rangeUInt(256, Urn_ink:Int +Int ABI_dink:Int))))
    andBool ((((#rangeUInt(256, Gem_iu:Int  -Int ABI_dink:Int))))
    andBool ((((#rangeUInt(256, (Urn_ink:Int +Int ABI_dink:Int) *Int Ilk_spot:Int))))
    andBool ((((#rangeUInt(256, Urn_art:Int *Int Ilk_rate:Int))))
    andBool ((((#rangeUInt(256, Ilk_Art:Int *Int Ilk_rate:Int))))
    andBool (((#rangeSInt(256, Ilk_rate:Int)))
    andBool ((VCallValue:Int ==Int 0)
    andBool ((Live:Int ==Int 1)
    andBool ((Ilk_rate:Int =/=Int 0)
    andBool (((ABI_dink:Int >=Int 0) orBool (((Urn_art:Int *Int Ilk_rate:Int) <=Int ((Urn_ink:Int +Int ABI_dink:Int) *Int Ilk_spot:Int))))
    andBool (((ABI_u:Int ==Int CALLER_ID:Int orBool Can_u:Int ==Int 1))
    andBool (((Urn_art:Int ==Int 0) orBool ((Urn_art:Int *Int Ilk_rate:Int) >=Int Ilk_dust:Int))))))))))))))
  ) 
ensures
?FAILURE =/=K EVMC_SUCCESS

// Vat_addui
rule [Vat.addui.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> chop(ABI_y) : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x +Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 13112 => 13174 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int #if 0 <=Int ABI_y
          #then   #if chop( ABI_y ) <=Int 0
            #then   114
            #else   128
          #fi
          #else   128
        #fi ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeSInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1015)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x +Int ABI_y)))))))

 
[trusted]


// Vat_subui
rule [Vat.subui.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> chop(ABI_y) : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x -Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 13304 => 13366 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int #if ( notBool ( 0 <=Int ABI_y andBool ABI_y =/=Int 0 ) )
          #then   #if 0 <=Int ABI_y
            #then   114
            #else   128
          #fi
          #else   128
        #fi ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeSInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1015)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x -Int ABI_y)))))))

 
[trusted]


// Vat_mului
rule [Vat.mului.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> chop(ABI_y) : ABI_x : JMPTO : WS  =>  JMPTO : chop(ABI_x *Int ABI_y) : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 13175 => 13233 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int #if ABI_y ==Int 0
          #then   96
          #else   132
        #fi ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeSInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1000)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeSInt(256, ABI_x))
  andBool ((#rangeSInt(256, ABI_x *Int ABI_y))))))))

 
[trusted]


// Vat_muluu
rule [Vat.muluu.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x *Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 13234 => 13277 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int #if ABI_y ==Int 0
          #then   54
          #else   106
        #fi ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeUInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1000)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x *Int ABI_y)))))))

 
[trusted]


endmodule
