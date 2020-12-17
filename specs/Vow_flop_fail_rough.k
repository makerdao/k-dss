requires "verification.k"

module EF701EFEB2B25CF11F2739F7D46237E976F472A6806B394AA0DC15E96E01D717
  imports VERIFICATION

// Vow_flop
claim [Vow.flop.fail.rough]:
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
        <program> Vow_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vow_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("flop", .TypedArgs) ++ CD => ?_ </callData>
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
      SetItem(Flopper)
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
          <code> Vow_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ?_ACCT_ID_STORAGE </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> Flopper </acctID>
          <balance> Flopper_balance </balance>
          <code> Flopper_bin_runtime </code>
          <storage> Flopper_STORAGE => ?_Flopper_STORAGE </storage>
          <origStorage> Flopper_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flopper => ?_ </nonce>
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

  andBool (#rangeAddress(Flopper)
  andBool (#rangeAddress(Vat)
  andBool (#rangeUInt(256, MayFlop)
  andBool (#rangeUInt(256, Sin)
  andBool (#rangeUInt(256, Ash)
  andBool (#rangeUInt(256, Awe)
  andBool (#rangeUInt(256, Joy)
  andBool (#rangeUInt(256, Dump)
  andBool (#rangeUInt(256, Sump)
  andBool (#rangeUInt(256, Kicks)
  andBool (#rangeUInt(256, FlopLive)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeAddress(Guy)
  andBool (#rangeUInt(48, Tic)
  andBool (#rangeUInt(48, End)
  andBool (#rangeUInt(256, Flopper_balance)
  andBool (#rangeUInt(256, Vat_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Flopper))
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Guy))
  andBool ((ACCT_ID =/=Int Flopper)
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((#rangeUInt(48, TIME))
  andBool ((Vat =/=Int 0)
  andBool ((Flopper =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_12)
  andBool (#rangeUInt(256, Junk_13)
  andBool (#rangeUInt(256, Junk_14)))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vow.flopper) ==Int Flopper
  andBool #lookup(ACCT_ID_STORAGE, #Vow.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Vow.Sin) ==Int Sin
  andBool #lookup(ACCT_ID_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(ACCT_ID_STORAGE, #Vow.dump) ==Int Dump
  andBool #lookup(ACCT_ID_STORAGE, #Vow.sump) ==Int Sump
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.flopper) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.vat) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Sin) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Ash) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.dump) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.sump) ==Int Junk_5
  andBool #Vow.flopper =/=Int #Vow.vat
  andBool #Vow.flopper =/=Int #Vow.Sin
  andBool #Vow.flopper =/=Int #Vow.Ash
  andBool #Vow.flopper =/=Int #Vow.dump
  andBool #Vow.flopper =/=Int #Vow.sump
  andBool #Vow.vat =/=Int #Vow.Sin
  andBool #Vow.vat =/=Int #Vow.Ash
  andBool #Vow.vat =/=Int #Vow.dump
  andBool #Vow.vat =/=Int #Vow.sump
  andBool #Vow.Sin =/=Int #Vow.Ash
  andBool #Vow.Sin =/=Int #Vow.dump
  andBool #Vow.Sin =/=Int #Vow.sump
  andBool #Vow.Ash =/=Int #Vow.dump
  andBool #Vow.Ash =/=Int #Vow.sump
  andBool #Vow.dump =/=Int #Vow.sump
  andBool #lookup(Flopper_STORAGE, #Flopper.live) ==Int FlopLive
  andBool #lookup(Flopper_STORAGE, #Flopper.wards[ACCT_ID]) ==Int MayFlop
  andBool #lookup(Flopper_STORAGE, #Flopper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(Flopper_STORAGE, #Flopper.kicks) ==Int Kicks
  andBool #lookup(Flopper_STORAGE, #Flopper.bids[1 +Int Kicks].bid) ==Int Bid
  andBool #lookup(Flopper_STORAGE, #Flopper.bids[1 +Int Kicks].lot) ==Int Lot
  andBool #lookup(Flopper_STORAGE, #Flopper.bids[1 +Int Kicks].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Guy, Tic, End)
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.live) ==Int Junk_6
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.wards[ACCT_ID]) ==Int Junk_7
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.ttl_tau) ==Int Junk_8
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.kicks) ==Int Junk_9
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].bid) ==Int Junk_10
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].lot) ==Int Junk_11
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].guy_tic_end) ==Int Junk_12
  andBool #Flopper.live =/=Int #Flopper.wards[ACCT_ID]
  andBool #Flopper.live =/=Int #Flopper.ttl_tau
  andBool #Flopper.live =/=Int #Flopper.kicks
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.ttl_tau
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.kicks
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.ttl_tau =/=Int #Flopper.kicks
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.bids[1 +Int Kicks].bid =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.bids[1 +Int Kicks].bid =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.bids[1 +Int Kicks].lot =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #lookup(Vat_STORAGE, #Vat.dai[ACCT_ID]) ==Int Joy
  andBool #lookup(Vat_STORAGE, #Vat.sin[ACCT_ID]) ==Int Awe
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[ACCT_ID]) ==Int Junk_13
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.sin[ACCT_ID]) ==Int Junk_14
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.sin[ACCT_ID]
  andBool notBool (
    ((((FlopLive:Int ==Int 1)))
    andBool ((((MayFlop:Int ==Int 1)))
    andBool (((((Awe:Int -Int Sin:Int) -Int Ash:Int >=Int Sump:Int)))
    andBool ((((Joy:Int ==Int 0)))
    andBool ((((VCallDepth:Int <Int 1024)))
    andBool ((((VCallValue:Int ==Int 0)))
    andBool (((#rangeUInt(48, TIME:Int +Int Tau:Int)))
    andBool ((#rangeUInt(256, Ash:Int +Int Sump:Int))
    andBool ((#rangeUInt(256, Awe:Int -Int Sin:Int))
    andBool ((#rangeUInt(256, (Awe:Int -Int Sin:Int) -Int Ash:Int))
    andBool ((#rangeUInt(256, 1 +Int Kicks:Int)))))))))))))
  ) 
ensures
?FAILURE =/=K EVMC_SUCCESS

// Vow_subuu
claim [Vow.subuu.pass]:
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
        <program> Vow_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vow_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x -Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 9803 => 9828 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -54 ) ) </gas>
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
          <code> Vow_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeUInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 100)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x -Int ABI_y)))))))

 
[trusted, matching(infGas)]


// Vow_adduu
claim [Vow.adduu.pass]:
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
        <program> Vow_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vow_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x +Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 9777 => 9802 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -54 ) ) </gas>
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
          <code> Vow_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeUInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 100)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x +Int ABI_y)))))))

 
[trusted, matching(infGas)]


// Vat_sin
claim [Vat.sin.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, Rad) </output>
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
        <callData> #abiCallData("sin", #address(ABI_usr)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -1235 ) ) </gas>
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

  andBool (#rangeAddress(ABI_usr)
  andBool (#rangeUInt(256, Rad)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool ((VCallValue ==Int 0))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.sin[ABI_usr]) ==Int Rad
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.sin[ABI_usr]) ==Int Junk_0 
[trusted, matching(infGas)]


// Vat_dai
claim [Vat.dai.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, Rad) </output>
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
        <callData> #abiCallData("dai", #address(ABI_usr)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -1236 ) ) </gas>
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

  andBool (#rangeAddress(ABI_usr)
  andBool (#rangeUInt(256, Rad)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool ((VCallValue ==Int 0))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_usr]) ==Int Rad
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_usr]) ==Int Junk_0 
[trusted, matching(infGas)]


// Flopper_kick
claim [Flopper.kick.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, 1 +Int Kicks) </output>
      <statusCode> _ => EVMC_SUCCESS </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Flopper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flopper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("kick", #address(ABI_gal), #uint256(ABI_lot), #uint256(ABI_bid)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Kicks +Int 1 ) , Kicks , Junk_2 ) ) -Int Csstore( ISTANBUL , ABI_bid , Old_bid , Junk_4 ) ) -Int Csstore( ISTANBUL , ABI_lot , Old_lot , Junk_5 ) ) -Int Csstore( ISTANBUL , ABI_gal |Int 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , Junk_6 ) ) -Int Csstore( ISTANBUL , #WordPackAddrUInt48UInt48 ( ABI_gal , Old_tic , ( TIME +Int Tau ) ) , ABI_gal |Int 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , Junk_6 ) ) +Int -8987 ) ) </gas>
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
          <code> Flopper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Flopper.kicks <- 1 +Int Kicks ]  [ #Flopper.bids[1 +Int Kicks].bid <- ABI_bid ] [ #Flopper.bids[1 +Int Kicks].lot <- ABI_lot ] [ #Flopper.bids[1 +Int Kicks].guy_tic_end <- #WordPackAddrUInt48UInt48(ABI_gal, Old_tic, TIME +Int Tau) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flopper => ?_ </nonce>
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

  andBool (#rangeAddress(ABI_gal)
  andBool (#rangeUInt(256, ABI_lot)
  andBool (#rangeUInt(256, ABI_bid)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, Kicks)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Old_lot)
  andBool (#rangeUInt(256, Old_bid)
  andBool (#rangeAddress(Old_guy)
  andBool (#rangeUInt(48, Old_tic)
  andBool (#rangeUInt(48, Old_end)
  andBool (#rangeUInt(256, Ward)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Old_guy))
  andBool ((#rangeUInt(48, TIME))
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool ((((Ward ==Int 1)))
  andBool ((((Live ==Int 1)))
  andBool ((((VCallValue ==Int 0)))
  andBool (((#rangeUInt(256, Kicks +Int 1)))
  andBool ((#rangeUInt(48, TIME +Int Tau))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flopper.wards[CALLER_ID]) ==Int Ward
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.kicks) ==Int Kicks
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[1 +Int Kicks].bid) ==Int Old_bid
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[1 +Int Kicks].lot) ==Int Old_lot
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[1 +Int Kicks].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Old_guy, Old_tic, Old_end)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.live) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.kicks) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.ttl_tau) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].bid) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].lot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[1 +Int Kicks].guy_tic_end) ==Int Junk_6
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.live
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.kicks
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.ttl_tau
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.wards[CALLER_ID] =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.live =/=Int #Flopper.kicks
  andBool #Flopper.live =/=Int #Flopper.ttl_tau
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.live =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.kicks =/=Int #Flopper.ttl_tau
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.kicks =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].bid
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.bids[1 +Int Kicks].bid =/=Int #Flopper.bids[1 +Int Kicks].lot
  andBool #Flopper.bids[1 +Int Kicks].bid =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flopper.bids[1 +Int Kicks].lot =/=Int #Flopper.bids[1 +Int Kicks].guy_tic_end 
[trusted, matching(infGas)]


endmodule
