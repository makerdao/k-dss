requires "verification.k"

module CE632A42F2FB9C855AFBC87A5271EBD5F20FFDC7D2409023CA2ED7306DC3D2D6
  imports VERIFICATION

// Flipper_dent-guy-diff
rule [Flipper.dent-guy-diff.pass.rough]:
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
        <program> Flipper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flipper_bin_runtime) </jumpDests>
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
          <code> Flipper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Flipper.bids[ABI_id].lot <- ABI_lot ]    [ #Flipper.bids[ABI_id].guy_tic_end <- #WordPackAddrUInt48UInt48(CALLER_ID, TIME +Int Ttl, End) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flipper => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.dai[CALLER_ID] <- Dai_c -Int ABI_bid ] [ #Vat.dai[Guy] <- Dai_g +Int ABI_bid ] [ #Vat.gem[Ilk][ACCT_ID] <- Gem_a -Int (Lot -Int ABI_lot) ] [ #Vat.gem[Ilk][Usr] <- Gem_u +Int (Lot -Int ABI_lot) ] </storage>
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
  andBool (#rangeAddress(Vat)
  andBool (#rangeBytes(32, Ilk)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Beg)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeAddress(Guy)
  andBool (#rangeUInt(48, Tic)
  andBool (#rangeUInt(48, End)
  andBool (#rangeAddress(Gal)
  andBool (#rangeAddress(Usr)
  andBool (#rangeUInt(256, Tab)
  andBool (#rangeUInt(256, Dai_c)
  andBool (#rangeUInt(256, Dai_g)
  andBool (#rangeUInt(256, Gem_a)
  andBool (#rangeUInt(256, Gem_u)
  andBool (#rangeUInt(256, Vat_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Guy))
  andBool ((#notPrecompileAddress(Gal))
  andBool ((#notPrecompileAddress(Usr))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((#rangeUInt(48, TIME))
  andBool ((CALLER_ID =/=Int ACCT_ID)
  andBool ((CALLER_ID =/=Int Guy)
  andBool ((ACCT_ID   =/=Int Usr)
  andBool ((Vat =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_15)
  andBool (#rangeUInt(256, Junk_16)
  andBool ((VCallValue ==Int 0)
  andBool ((VCallDepth <Int 1024)
  andBool ((Guy =/=Int 0)
  andBool ((Can ==Int 1)
  andBool ((Tic >Int TIME orBool Tic ==Int 0)
  andBool ((End >Int TIME)
  andBool ((TIME +Int Ttl <=Int maxUInt48)
  andBool ((ABI_bid ==Int Bid)
  andBool ((ABI_bid ==Int Tab)
  andBool ((ABI_lot <Int  Lot)
  andBool ((Gem_u +Int (Lot -Int ABI_lot) <=Int maxUInt256)
  andBool ((Gem_a >=Int (Lot -Int ABI_lot))
  andBool ((ABI_bid <=Int Dai_c)
  andBool ((Dai_g +Int ABI_bid <=Int maxUInt256)
  andBool ((Lot *Int #Wad >=Int ABI_lot *Int Beg)
  andBool ((Lot *Int #Wad <=Int maxUInt256))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flipper.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.ilk) ==Int Ilk
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.beg) ==Int Beg
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].bid) ==Int Bid
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].lot) ==Int Lot
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].tab) ==Int Tab
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].usr) ==Int Usr
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].gal) ==Int Gal
  andBool #lookup(ACCT_ID_STORAGE, #Flipper.bids[ABI_id].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Guy, Tic, End)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.vat) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.ilk) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.beg) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.ttl_tau) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].bid) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].lot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].tab) ==Int Junk_6
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].usr) ==Int Junk_7
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].gal) ==Int Junk_8
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flipper.bids[ABI_id].guy_tic_end) ==Int Junk_9
  andBool #Flipper.vat =/=Int #Flipper.ilk
  andBool #Flipper.vat =/=Int #Flipper.beg
  andBool #Flipper.vat =/=Int #Flipper.ttl_tau
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].bid
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].lot
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.vat =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.ilk =/=Int #Flipper.beg
  andBool #Flipper.ilk =/=Int #Flipper.ttl_tau
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].bid
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].lot
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.ilk =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.beg =/=Int #Flipper.ttl_tau
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].bid
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].lot
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.beg =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].bid
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].lot
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.ttl_tau =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.bids[ABI_id].bid =/=Int #Flipper.bids[ABI_id].lot
  andBool #Flipper.bids[ABI_id].bid =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.bids[ABI_id].bid =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.bids[ABI_id].bid =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.bids[ABI_id].bid =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.bids[ABI_id].lot =/=Int #Flipper.bids[ABI_id].tab
  andBool #Flipper.bids[ABI_id].lot =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.bids[ABI_id].lot =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.bids[ABI_id].lot =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.bids[ABI_id].tab =/=Int #Flipper.bids[ABI_id].usr
  andBool #Flipper.bids[ABI_id].tab =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.bids[ABI_id].tab =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.bids[ABI_id].usr =/=Int #Flipper.bids[ABI_id].gal
  andBool #Flipper.bids[ABI_id].usr =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #Flipper.bids[ABI_id].gal =/=Int #Flipper.bids[ABI_id].guy_tic_end
  andBool #lookup(Vat_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int Can
  andBool #lookup(Vat_STORAGE, #Vat.can[ACCT_ID][ACCT_ID]) ==Int Junk_10
  andBool #lookup(Vat_STORAGE, #Vat.dai[CALLER_ID]) ==Int Dai_c
  andBool #lookup(Vat_STORAGE, #Vat.dai[Guy]) ==Int Dai_g
  andBool #lookup(Vat_STORAGE, #Vat.gem[Ilk][ACCT_ID]) ==Int Gem_a
  andBool #lookup(Vat_STORAGE, #Vat.gem[Ilk][Usr]) ==Int Gem_u
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int Junk_11
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[ACCT_ID][ACCT_ID]) ==Int Junk_12
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[CALLER_ID]) ==Int Junk_13
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[Guy]) ==Int Junk_14
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.gem[Ilk][ACCT_ID]) ==Int Junk_15
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.gem[Ilk][Usr]) ==Int Junk_16
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.can[ACCT_ID][ACCT_ID]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[CALLER_ID]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[Guy]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.gem[Ilk][ACCT_ID]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.gem[Ilk][Usr]
  andBool #Vat.can[ACCT_ID][ACCT_ID] =/=Int #Vat.dai[CALLER_ID]
  andBool #Vat.can[ACCT_ID][ACCT_ID] =/=Int #Vat.dai[Guy]
  andBool #Vat.can[ACCT_ID][ACCT_ID] =/=Int #Vat.gem[Ilk][ACCT_ID]
  andBool #Vat.can[ACCT_ID][ACCT_ID] =/=Int #Vat.gem[Ilk][Usr]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.dai[Guy]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.gem[Ilk][ACCT_ID]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.gem[Ilk][Usr]
  andBool #Vat.dai[Guy] =/=Int #Vat.gem[Ilk][ACCT_ID]
  andBool #Vat.dai[Guy] =/=Int #Vat.gem[Ilk][Usr]
  andBool #Vat.gem[Ilk][ACCT_ID] =/=Int #Vat.gem[Ilk][Usr] 

// Flipper_muluu
rule [Flipper.muluu.pass]:
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
        <program> Flipper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flipper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x *Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 11396 => 11439 </pc>
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
          <code> Flipper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flipper => ?_ </nonce>
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


// Vat_move-diff
rule [Vat.move-diff.pass]:
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
        <gas> #gas(VGas) => #gas ( ( VGas +Int ( Csstore( ISTANBUL , ( Dai_src -Int ABI_rad ) , Dai_src , Junk_1 ) +Int ( Csstore( ISTANBUL , ( Dai_dst +Int ABI_rad ) , Dai_dst , Junk_2 ) +Int 7943 ) ) ) ) </gas>
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
[trusted]


// Vat_flux-diff
rule [Vat.flux-diff.pass]:
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
        <callData> #abiCallData("flux", #bytes32(ABI_ilk), #address(ABI_src), #address(ABI_dst), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int ( Csstore( ISTANBUL , ( Gem_src -Int ABI_wad ) , Gem_src , Junk_1 ) +Int ( Csstore( ISTANBUL , ( Gem_dst +Int ABI_wad ) , Gem_dst , Junk_2 ) +Int 8307 ) ) ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.gem[ABI_ilk][ABI_src] <- Gem_src -Int ABI_wad ] [ #Vat.gem[ABI_ilk][ABI_dst] <- Gem_dst +Int ABI_wad ] </storage>
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
  andBool (#rangeAddress(ABI_src)
  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Gem_src)
  andBool (#rangeUInt(256, Gem_dst)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_src =/=Int ABI_dst)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((((May ==Int 1 orBool ABI_src ==Int CALLER_ID)))
  andBool (((VCallValue ==Int 0))
  andBool ((#rangeUInt(256, Gem_src -Int ABI_wad))
  andBool ((#rangeUInt(256, Gem_dst +Int ABI_wad))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.gem[ABI_ilk][ABI_src]) ==Int Gem_src
  andBool #lookup(ACCT_ID_STORAGE, #Vat.gem[ABI_ilk][ABI_dst]) ==Int Gem_dst
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.gem[ABI_ilk][ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.gem[ABI_ilk][ABI_dst]) ==Int Junk_2
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.gem[ABI_ilk][ABI_src]
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.gem[ABI_ilk][ABI_dst]
  andBool #Vat.gem[ABI_ilk][ABI_src] =/=Int #Vat.gem[ABI_ilk][ABI_dst] 
[trusted]


endmodule
