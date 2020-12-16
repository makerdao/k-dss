requires "verification.k"

module 889FF76E6B8231CC037E14BC86F1E08DFE2DB7D41946ED43CFC9ABD5B7481C2D
  imports VERIFICATION

// Flopper_dent-guy-diff-tic-0
claim [Flopper.dent-guy-diff-tic-0.pass.rough]:
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
        <program> Flopper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flopper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("dent", #uint256(ABI_id), #uint256(ABI_lot), #uint256(ABI_bid)) ++ CD => ?_ </callData>
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
      SetItem(Vow)
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
          <code> Flopper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Flopper.bids[ABI_id].lot <- ABI_lot ] [ #Flopper.bids[ABI_id].guy_tic_end <- #WordPackAddrUInt48UInt48(CALLER_ID, TIME +Int Ttl, End) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flopper => ?_ </nonce>
        </account>
        <account>
          <acctID> Vow </acctID>
          <balance> Vow_balance </balance>
          <code> Vow_bin_runtime </code>
          <storage> Vow_STORAGE => Vow_STORAGE [ #Vow.Ash <- #if ABI_bid >Int Ash #then 0 #else Ash -Int ABI_bid #fi ] </storage>
          <origStorage> Vow_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.dai[CALLER_ID] <- Dai_a -Int ABI_bid ] [ #Vat.dai[Vow] <- #if ABI_bid >Int Ash #then Joy +Int ABI_bid -Int Ash #else Joy #fi ] [ #Vat.sin[Vow] <- #if ABI_bid >Int Ash #then Awe -Int Ash #else Awe -Int ABI_bid #fi ] [ #Vat.vice <- #if ABI_bid >Int Ash #then Vice -Int Ash #else Vice -Int ABI_bid #fi ] [ #Vat.debt <- #if ABI_bid >Int Ash #then Debt -Int Ash #else Debt -Int ABI_bid #fi ] </storage>
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

  andBool (#rangeUInt(256, ABI_id)
  andBool (#rangeUInt(256, ABI_lot)
  andBool (#rangeUInt(256, ABI_bid)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeAddress(Vat)
  andBool (#rangeUInt(256, Beg)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeUInt(48, Tic)
  andBool (#rangeUInt(48, End)
  andBool (#rangeUInt(256, CanMove)
  andBool (#rangeUInt(256, Dai_a)
  andBool (#rangeAddress(Vow)
  andBool (#rangeUInt(256, Ash)
  andBool (#rangeUInt(256, Joy)
  andBool (#rangeUInt(256, Awe)
  andBool (#rangeUInt(256, Vice)
  andBool (#rangeUInt(256, Debt)
  andBool (#rangeUInt(256, Vow_balance)
  andBool (#rangeUInt(256, Vat_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Vow))
  andBool ((ACCT_ID =/=Int Vow)
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((CALLER_ID =/=Int ACCT_ID)
  andBool ((CALLER_ID =/=Int Vow)
  andBool ((Vat =/=Int Vow)
  andBool ((#rangeUInt(48, TIME))
  andBool ((Tic ==Int 0)
  andBool ((Vat =/=Int 0)
  andBool ((Vow =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_14)
  andBool (((((Live ==Int 1))))
  andBool (((((Vow =/=Int 0))))
  andBool (((((End >Int TIME))))
  andBool (((((ABI_bid ==Int Bid))))
  andBool (((((ABI_lot <Int  Lot))))
  andBool (((((Lot *Int #Wad <=Int maxUInt256))))
  andBool (((((Beg *Int ABI_lot <=Int Lot *Int #Wad))))
  andBool (((((CanMove ==Int 1))))
  andBool (((((VCallValue ==Int 0))))
  andBool (((((VCallDepth <Int 1023))))
  andBool ((((#rangeUInt(256, Dai_a -Int ABI_bid))))
  andBool ((((#rangeUInt(256, Joy +Int ABI_bid))))
  andBool (((#rangeUInt(48, TIME +Int Ttl)))
  andBool (((ABI_bid >Int Ash andBool Awe -Int Ash >=Int 0 andBool Vice -Int Ash >=Int 0 andBool Debt -Int Ash >=Int 0) orBool (ABI_bid <=Int Ash andBool Awe -Int ABI_bid >=Int 0 andBool Vice -Int ABI_bid >=Int 0 andBool Debt -Int ABI_bid >=Int 0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flopper.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.beg) ==Int Beg
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].bid) ==Int Bid
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].lot) ==Int Lot
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Vow, Tic, End)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.live) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.vat) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.beg) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.ttl_tau) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].bid) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].lot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].guy_tic_end) ==Int Junk_6
  andBool #Flopper.live =/=Int #Flopper.vat
  andBool #Flopper.live =/=Int #Flopper.beg
  andBool #Flopper.live =/=Int #Flopper.ttl_tau
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.vat =/=Int #Flopper.beg
  andBool #Flopper.vat =/=Int #Flopper.ttl_tau
  andBool #Flopper.vat =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.vat =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.vat =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.beg =/=Int #Flopper.ttl_tau
  andBool #Flopper.beg =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.beg =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.beg =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.ttl_tau =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.bids[ABI_id].bid =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.bids[ABI_id].bid =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.bids[ABI_id].lot =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #lookup(Vow_STORAGE, #Vow.vat) ==Int Vat
  andBool #lookup(Vow_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.vat) ==Int Junk_7
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.Ash) ==Int Junk_8
  andBool #Vow.vat =/=Int #Vow.Ash
  andBool #lookup(Vat_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int CanMove
  andBool #lookup(Vat_STORAGE, #Vat.dai[CALLER_ID]) ==Int Dai_a
  andBool #lookup(Vat_STORAGE, #Vat.dai[Vow]) ==Int Joy
  andBool #lookup(Vat_STORAGE, #Vat.sin[Vow]) ==Int Awe
  andBool #lookup(Vat_STORAGE, #Vat.vice) ==Int Vice
  andBool #lookup(Vat_STORAGE, #Vat.debt) ==Int Debt
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int Junk_9
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[CALLER_ID]) ==Int Junk_10
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[Vow]) ==Int Junk_11
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.sin[Vow]) ==Int Junk_12
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.vice) ==Int Junk_13
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.debt) ==Int Junk_14
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[CALLER_ID]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[Vow]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.sin[Vow]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.dai[Vow]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.sin[Vow]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.vice
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.debt
  andBool #Vat.dai[Vow] =/=Int #Vat.sin[Vow]
  andBool #Vat.dai[Vow] =/=Int #Vat.vice
  andBool #Vat.dai[Vow] =/=Int #Vat.debt
  andBool #Vat.sin[Vow] =/=Int #Vat.vice
  andBool #Vat.sin[Vow] =/=Int #Vat.debt
  andBool #Vat.vice =/=Int #Vat.debt 

// Flopper_muluu
claim [Flopper.muluu.pass]:
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
        <program> Flopper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flopper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x *Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 8685 => 8728 </pc>
        <gas> #gas(VGas) => #if ABI_y ==Int 0
          #then   #gas ( ( VGas +Int -54 ) )
          #else   #gas ( ( VGas +Int -106 ) )
        #fi </gas>
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
          <code> Flopper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeUInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1000)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x *Int ABI_y)))))))

 
[trusted, matching(infGas)]


// Flopper_addu48u48
claim [Flopper.addu48u48.pass]:
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
        <program> Flopper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flopper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x +Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 8757 => 8798 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -66 ) ) </gas>
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
          <code> Flopper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
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

  andBool (#rangeUInt(48, ABI_x)
  andBool (#rangeUInt(48, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 100)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(48, ABI_x +Int ABI_y)))))))

 
[trusted, matching(infGas)]


// Vat_move-diff
claim [Vat.move-diff.pass]:
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
        <callData> #abiCallData("move", #address(ABI_src), #address(ABI_dst), #uint256(ABI_rad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Dai_src -Int ABI_rad ) , Dai_src , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Dai_dst +Int ABI_rad ) , Dai_dst , Junk_2 ) ) +Int -7943 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.dai[ABI_src] <- Dai_src -Int ABI_rad ] [ #Vat.dai[ABI_dst] <- Dai_dst +Int ABI_rad ] </storage>
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

  andBool (#rangeAddress(ABI_src)
  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_rad)
  andBool (#rangeUInt(256, Dai_dst)
  andBool (#rangeUInt(256, Dai_src)
  andBool (#rangeUInt(256, May)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_src =/=Int ABI_dst)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((((May ==Int 1 orBool ABI_src ==Int CALLER_ID)))
  andBool (((VCallValue ==Int 0))
  andBool ((#rangeUInt(256, Dai_src -Int ABI_rad))
  andBool ((#rangeUInt(256, Dai_dst +Int ABI_rad)))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_src]) ==Int Dai_src
  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_dst]) ==Int Dai_dst
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_dst]) ==Int Junk_2
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.dai[ABI_src]
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.dai[ABI_dst]
  andBool #Vat.dai[ABI_src] =/=Int #Vat.dai[ABI_dst] 
[trusted, matching(infGas)]


// Vow_Ash
claim [Vow.Ash.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, Ash) </output>
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
        <callData> #abiCallData("Ash", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int -1117 ) ) </gas>
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

  andBool (#rangeUInt(256, Ash)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool ((VCallValue ==Int 0)))))

  andBool #lookup(ACCT_ID_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Ash) ==Int Junk_0 
[trusted, matching(infGas)]


// Vow_kiss
claim [Vow.kiss.pass]:
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
        <callData> #abiCallData("kiss", #uint256(ABI_rad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Ash -Int ABI_rad ) , Ash , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Awe -Int ABI_rad ) , Awe , Junk_2 ) ) -Int Csstore( ISTANBUL , ( Joy -Int ABI_rad ) , Joy , Junk_3 ) ) -Int Csstore( ISTANBUL , ( Vice -Int ABI_rad ) , Vice , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Debt -Int ABI_rad ) , Debt , Junk_4 ) ) +Int -21107 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vow.Ash <- Ash -Int ABI_rad ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.sin[ACCT_ID] <- Awe  -Int ABI_rad ] [ #Vat.dai[ACCT_ID] <- Joy  -Int ABI_rad ] [ #Vat.debt <- Debt -Int ABI_rad ] [ #Vat.vice <- Vice -Int ABI_rad ] </storage>
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

  andBool (#rangeUInt(256, ABI_rad)
  andBool (#rangeAddress(Vat)
  andBool (#rangeUInt(256, Ash)
  andBool (#rangeUInt(256, Joy)
  andBool (#rangeUInt(256, Awe)
  andBool (#rangeUInt(256, Vice)
  andBool (#rangeUInt(256, Debt)
  andBool (#rangeUInt(256, Vat_balance)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#notPrecompileAddress(Vat)
  andBool (ACCT_ID =/=Int Vat
  andBool ((Vat =/=Int 0)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (((ABI_rad <=Int Joy))
  andBool (((ABI_rad <=Int Ash))
  andBool (((VCallValue ==Int 0))
  andBool (((VCallDepth <Int 1024))
  andBool ((#rangeUInt(256, Ash  -Int ABI_rad))
  andBool ((#rangeUInt(256, Joy  -Int ABI_rad))
  andBool ((#rangeUInt(256, Awe  -Int ABI_rad))
  andBool ((#rangeUInt(256, Vice -Int ABI_rad))
  andBool ((#rangeUInt(256, Debt -Int ABI_rad)))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vow.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.vat) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Ash) ==Int Junk_1
  andBool #Vow.vat =/=Int #Vow.Ash
  andBool #lookup(Vat_STORAGE, #Vat.sin[ACCT_ID]) ==Int Awe
  andBool #lookup(Vat_STORAGE, #Vat.dai[ACCT_ID]) ==Int Joy
  andBool #lookup(Vat_STORAGE, #Vat.debt) ==Int Debt
  andBool #lookup(Vat_STORAGE, #Vat.vice) ==Int Vice
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.sin[ACCT_ID]) ==Int Junk_2
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[ACCT_ID]) ==Int Junk_3
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.debt) ==Int Junk_4
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.vice) ==Int Junk_5
  andBool #Vat.sin[ACCT_ID] =/=Int #Vat.dai[ACCT_ID]
  andBool #Vat.sin[ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.sin[ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.debt =/=Int #Vat.vice 
[trusted, matching(infGas)]


endmodule
