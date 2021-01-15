requires "verification.k"

module 69E0B1BDA37FA50C066C520CE600D06D1EFC1371FF5B9E1C654361304BAE5518
  imports VERIFICATION

// End_cage-deficit
claim [End.cage-deficit.pass.rough]:
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
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
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
      SetItem(Cat)
      SetItem(Vow)
      SetItem(Flapper)
      SetItem(Flopper)
      SetItem(Spotter)
      SetItem(Pot)
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #End.live <- 0 ] [ #End.when <- TIME ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_End => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.live <- 0 ] [ #Vat.dai[Flapper] <- 0 ] [ #Vat.dai[Vow] <- 0 ] [ #Vat.sin[Vow] <- (Sin_v -Int Dai_v) -Int Dai_f ] [ #Vat.debt <- Debt -Int (Dai_v +Int Dai_f) ] [ #Vat.vice <- Vice -Int (Dai_v +Int Dai_f) ] </storage>
          <origStorage> Vat_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vat => ?_ </nonce>
        </account>
        <account>
          <acctID> Cat </acctID>
          <balance> Cat_balance </balance>
          <code> Cat_bin_runtime </code>
          <storage> Cat_STORAGE => Cat_STORAGE [ #Cat.live <- 0 ] </storage>
          <origStorage> Cat_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Cat => ?_ </nonce>
        </account>
        <account>
          <acctID> Vow </acctID>
          <balance> Vow_balance </balance>
          <code> Vow_bin_runtime </code>
          <storage> Vow_STORAGE => Vow_STORAGE [ #Vow.live <- 0 ] [ #Vow.Sin <- 0 ] [ #Vow.Ash <- 0 ] </storage>
          <origStorage> Vow_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> Flapper </acctID>
          <balance> Flapper_balance </balance>
          <code> Flapper_bin_runtime </code>
          <storage> Flapper_STORAGE => Flapper_STORAGE [ #Flapper.live <- 0 ] </storage>
          <origStorage> Flapper_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
        </account>
        <account>
          <acctID> Flopper </acctID>
          <balance> Flopper_balance </balance>
          <code> Flopper_bin_runtime </code>
          <storage> Flopper_STORAGE => Flopper_STORAGE [ #Flopper.live <- 0 ] [ #Flopper.vow <- Vow ] </storage>
          <origStorage> Flopper_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flopper => ?_ </nonce>
        </account>
        <account>
          <acctID> Spotter </acctID>
          <balance> Spotter_balance </balance>
          <code> Spotter_bin_runtime </code>
          <storage> Spotter_STORAGE => Spotter_STORAGE [ #Spotter.live <- 0 ] </storage>
          <origStorage> Spotter_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Spotter => ?_ </nonce>
        </account>
        <account>
          <acctID> Pot </acctID>
          <balance> Pot_balance </balance>
          <code> Pot_bin_runtime </code>
          <storage> Pot_STORAGE => Pot_STORAGE [ #Pot.dsr <- #Ray ] [ #Pot.live <- 0 ] </storage>
          <origStorage> Pot_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Pot => ?_ </nonce>
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

  andBool (#rangeAddress(Vat)
  andBool (#rangeAddress(Cat)
  andBool (#rangeAddress(Vow)
  andBool (#rangeAddress(Spotter)
  andBool (#rangeAddress(Pot)
  andBool (#rangeAddress(Flapper)
  andBool (#rangeAddress(Flopper)
  andBool (#rangeAddress(FlapVat)
  andBool (#rangeAddress(VowVat)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, When)
  andBool (#rangeUInt(256, VatLive)
  andBool (#rangeUInt(256, CatLive)
  andBool (#rangeUInt(256, VowLive)
  andBool (#rangeUInt(256, FlapLive)
  andBool (#rangeUInt(256, FlopLive)
  andBool (#rangeUInt(256, FlopVow)
  andBool (#rangeUInt(256, CallerMay)
  andBool (#rangeUInt(256, EndMayVat)
  andBool (#rangeUInt(256, EndMayCat)
  andBool (#rangeUInt(256, EndMayVow)
  andBool (#rangeUInt(256, VowMayFlap)
  andBool (#rangeUInt(256, VowMayFlop)
  andBool (#rangeUInt(256, EndMaySpot)
  andBool (#rangeUInt(256, EndMayPot)
  andBool (#rangeUInt(256, Dai_f)
  andBool (#rangeUInt(256, Sin_v)
  andBool (#rangeUInt(256, Dai_v)
  andBool (#rangeUInt(256, Debt)
  andBool (#rangeUInt(256, Vice)
  andBool (#rangeUInt(256, Sin)
  andBool (#rangeUInt(256, Ash)
  andBool (#rangeUInt(256, Vat_balance)
  andBool (#rangeUInt(256, Cat_balance)
  andBool (#rangeUInt(256, Vow_balance)
  andBool (#rangeUInt(256, Flapper_balance)
  andBool (#rangeUInt(256, Flopper_balance)
  andBool (#rangeUInt(256, Spotter_balance)
  andBool (#rangeUInt(256, Pot_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Cat))
  andBool ((#notPrecompileAddress(Vow))
  andBool ((#notPrecompileAddress(Spotter))
  andBool ((#notPrecompileAddress(Pot))
  andBool ((#notPrecompileAddress(Flapper))
  andBool ((#notPrecompileAddress(Flopper))
  andBool ((#notPrecompileAddress(FlapVat))
  andBool ((#notPrecompileAddress(VowVat))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((ACCT_ID =/=Int Cat)
  andBool ((ACCT_ID =/=Int Vow)
  andBool ((ACCT_ID =/=Int Flapper)
  andBool ((ACCT_ID =/=Int Flopper)
  andBool ((ACCT_ID =/=Int Spotter)
  andBool ((ACCT_ID =/=Int Pot)
  andBool ((Dai_v +Int Dai_f <Int Sin_v)
  andBool ((Flapper =/=Int Vow)
  andBool ((Flapper =/=Int Vat)
  andBool ((Flopper =/=Int Vow)
  andBool ((Flopper =/=Int Vat)
  andBool ((Flopper =/=Int Flapper)
  andBool ((FlapVat ==Int Vat)
  andBool ((VowVat  ==Int Vat)
  andBool ((VowVat  =/=Int Vow)
  andBool ((FlapVat =/=Int Vow)
  andBool ((Vat =/=Int 0)
  andBool ((Cat =/=Int 0)
  andBool ((Vow =/=Int 0)
  andBool ((Spotter =/=Int 0)
  andBool ((Pot =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_17)
  andBool (#rangeUInt(256, Junk_18)
  andBool (#rangeUInt(256, Junk_19)
  andBool (#rangeUInt(256, Junk_20)
  andBool (#rangeUInt(256, Junk_21)
  andBool (#rangeUInt(256, Junk_22)
  andBool (#rangeUInt(256, Junk_23)
  andBool (#rangeUInt(256, Junk_24)
  andBool (#rangeUInt(256, Junk_25)
  andBool (#rangeUInt(256, Junk_26)
  andBool (#rangeUInt(256, Junk_27)
  andBool (#rangeUInt(256, Junk_28)
  andBool (#rangeUInt(256, Junk_29)
  andBool (#rangeUInt(256, Junk_30)
  andBool (#rangeUInt(256, Junk_31)
  andBool (#rangeUInt(256, Junk_32)
  andBool (#rangeUInt(256, Junk_33)
  andBool (#rangeUInt(256, Junk_34)
  andBool (#rangeUInt(256, Junk_35)
  andBool (((VCallValue ==Int 0))
  andBool (((VCallDepth <Int 1022))
  andBool (((Live ==Int 1))
  andBool (((VowLive ==Int 1))
  andBool (((CallerMay ==Int 1))
  andBool (((EndMayVat ==Int 1))
  andBool (((EndMayCat ==Int 1))
  andBool (((EndMayVow ==Int 1))
  andBool (((VowMayFlap ==Int 1))
  andBool (((VowMayFlop ==Int 1))
  andBool (((EndMaySpot ==Int 1))
  andBool (((EndMayPot ==Int 1))
  andBool ((#rangeUInt(256, Dai_v +Int Dai_f))
  andBool ((#rangeUInt(256, Debt -Int (Dai_v +Int Dai_f)))
  andBool ((#rangeUInt(256, Vice -Int (Dai_v +Int Dai_f)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #End.wards[CALLER_ID]) ==Int CallerMay
  andBool #lookup(ACCT_ID_STORAGE, #End.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #End.when) ==Int When
  andBool #lookup(ACCT_ID_STORAGE, #End.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #End.cat) ==Int Cat
  andBool #lookup(ACCT_ID_STORAGE, #End.vow) ==Int Vow
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.live) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.when) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.vat) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.cat) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #End.vow) ==Int Junk_5
  andBool #End.wards[CALLER_ID] =/=Int #End.live
  andBool #End.wards[CALLER_ID] =/=Int #End.when
  andBool #End.wards[CALLER_ID] =/=Int #End.vat
  andBool #End.wards[CALLER_ID] =/=Int #End.cat
  andBool #End.wards[CALLER_ID] =/=Int #End.vow
  andBool #End.live =/=Int #End.when
  andBool #End.live =/=Int #End.vat
  andBool #End.live =/=Int #End.cat
  andBool #End.live =/=Int #End.vow
  andBool #End.when =/=Int #End.vat
  andBool #End.when =/=Int #End.cat
  andBool #End.when =/=Int #End.vow
  andBool #End.vat =/=Int #End.cat
  andBool #End.vat =/=Int #End.vow
  andBool #End.cat =/=Int #End.vow
  andBool #lookup(Vat_STORAGE, #Vat.wards[ACCT_ID]) ==Int EndMayVat
  andBool #lookup(Vat_STORAGE, #Vat.live) ==Int VatLive
  andBool #lookup(Vat_STORAGE, #Vat.dai[Flapper]) ==Int Dai_f
  andBool #lookup(Vat_STORAGE, #Vat.dai[Vow]) ==Int Dai_v
  andBool #lookup(Vat_STORAGE, #Vat.sin[Vow]) ==Int Sin_v
  andBool #lookup(Vat_STORAGE, #Vat.debt) ==Int Debt
  andBool #lookup(Vat_STORAGE, #Vat.vice) ==Int Vice
  andBool #lookup(Vat_STORAGE, #Vat.can[Flapper][Flapper]) ==Int Junk_6
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.wards[ACCT_ID]) ==Int Junk_7
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.live) ==Int Junk_8
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[Flapper]) ==Int Junk_9
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[Vow]) ==Int Junk_10
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.sin[Vow]) ==Int Junk_11
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.debt) ==Int Junk_12
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.vice) ==Int Junk_13
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[Flapper][Flapper]) ==Int Junk_14
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.live
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.dai[Flapper]
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.dai[Vow]
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.sin[Vow]
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.live =/=Int #Vat.dai[Flapper]
  andBool #Vat.live =/=Int #Vat.dai[Vow]
  andBool #Vat.live =/=Int #Vat.sin[Vow]
  andBool #Vat.live =/=Int #Vat.debt
  andBool #Vat.live =/=Int #Vat.vice
  andBool #Vat.live =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.dai[Flapper] =/=Int #Vat.dai[Vow]
  andBool #Vat.dai[Flapper] =/=Int #Vat.sin[Vow]
  andBool #Vat.dai[Flapper] =/=Int #Vat.debt
  andBool #Vat.dai[Flapper] =/=Int #Vat.vice
  andBool #Vat.dai[Flapper] =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.dai[Vow] =/=Int #Vat.sin[Vow]
  andBool #Vat.dai[Vow] =/=Int #Vat.debt
  andBool #Vat.dai[Vow] =/=Int #Vat.vice
  andBool #Vat.dai[Vow] =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.sin[Vow] =/=Int #Vat.debt
  andBool #Vat.sin[Vow] =/=Int #Vat.vice
  andBool #Vat.sin[Vow] =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.debt =/=Int #Vat.vice
  andBool #Vat.debt =/=Int #Vat.can[Flapper][Flapper]
  andBool #Vat.vice =/=Int #Vat.can[Flapper][Flapper]
  andBool #lookup(Cat_STORAGE, #Cat.live) ==Int CatLive
  andBool #lookup(Cat_STORAGE, #Cat.wards[ACCT_ID]) ==Int EndMayCat
  andBool #lookup(Cat_ORIG_STORAGE, #Cat.live) ==Int Junk_15
  andBool #lookup(Cat_ORIG_STORAGE, #Cat.wards[ACCT_ID]) ==Int Junk_16
  andBool #Cat.live =/=Int #Cat.wards[ACCT_ID]
  andBool #lookup(Vow_STORAGE, #Vow.wards[ACCT_ID]) ==Int EndMayVow
  andBool #lookup(Vow_STORAGE, #Vow.vat) ==Int VowVat
  andBool #lookup(Vow_STORAGE, #Vow.flapper) ==Int Flapper
  andBool #lookup(Vow_STORAGE, #Vow.flopper) ==Int Flopper
  andBool #lookup(Vow_STORAGE, #Vow.live) ==Int VowLive
  andBool #lookup(Vow_STORAGE, #Vow.Sin) ==Int Sin
  andBool #lookup(Vow_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.wards[ACCT_ID]) ==Int Junk_17
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.vat) ==Int Junk_18
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.flapper) ==Int Junk_19
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.flopper) ==Int Junk_20
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.live) ==Int Junk_21
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.Sin) ==Int Junk_22
  andBool #lookup(Vow_ORIG_STORAGE, #Vow.Ash) ==Int Junk_23
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.vat
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.flapper
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.flopper
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.live
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.Sin
  andBool #Vow.wards[ACCT_ID] =/=Int #Vow.Ash
  andBool #Vow.vat =/=Int #Vow.flapper
  andBool #Vow.vat =/=Int #Vow.flopper
  andBool #Vow.vat =/=Int #Vow.live
  andBool #Vow.vat =/=Int #Vow.Sin
  andBool #Vow.vat =/=Int #Vow.Ash
  andBool #Vow.flapper =/=Int #Vow.flopper
  andBool #Vow.flapper =/=Int #Vow.live
  andBool #Vow.flapper =/=Int #Vow.Sin
  andBool #Vow.flapper =/=Int #Vow.Ash
  andBool #Vow.flopper =/=Int #Vow.live
  andBool #Vow.flopper =/=Int #Vow.Sin
  andBool #Vow.flopper =/=Int #Vow.Ash
  andBool #Vow.live =/=Int #Vow.Sin
  andBool #Vow.live =/=Int #Vow.Ash
  andBool #Vow.Sin =/=Int #Vow.Ash
  andBool #lookup(Flapper_STORAGE, #Flapper.wards[Vow]) ==Int VowMayFlap
  andBool #lookup(Flapper_STORAGE, #Flapper.vat) ==Int FlapVat
  andBool #lookup(Flapper_STORAGE, #Flapper.live) ==Int FlapLive
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.wards[Vow]) ==Int Junk_24
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.vat) ==Int Junk_25
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.live) ==Int Junk_26
  andBool #Flapper.wards[Vow] =/=Int #Flapper.vat
  andBool #Flapper.wards[Vow] =/=Int #Flapper.live
  andBool #Flapper.vat =/=Int #Flapper.live
  andBool #lookup(Flopper_STORAGE, #Flopper.wards[Vow]) ==Int VowMayFlop
  andBool #lookup(Flopper_STORAGE, #Flopper.live) ==Int FlopLive
  andBool #lookup(Flopper_STORAGE, #Flopper.vow) ==Int FlopVow
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.wards[Vow]) ==Int Junk_27
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.live) ==Int Junk_28
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.vow) ==Int Junk_29
  andBool #Flopper.wards[Vow] =/=Int #Flopper.live
  andBool #Flopper.wards[Vow] =/=Int #Flopper.vow
  andBool #Flopper.live =/=Int #Flopper.vow
  andBool #lookup(Spotter_STORAGE, #Spotter.wards[ACCT_ID]) ==Int EndMaySpot
  andBool #lookup(Spotter_STORAGE, #Spotter.live) ==Int Junk_30
  andBool #lookup(Spotter_ORIG_STORAGE, #Spotter.wards[ACCT_ID]) ==Int Junk_31
  andBool #lookup(Spotter_ORIG_STORAGE, #Spotter.live) ==Int Junk_32
  andBool #Spotter.wards[ACCT_ID] =/=Int #Spotter.live
  andBool #lookup(Pot_STORAGE, #Pot.wards[ACCT_ID]) ==Int EndMayPot
  andBool #lookup(Pot_STORAGE, #Pot.dsr) ==Int Dsr
  andBool #lookup(Pot_STORAGE, #Pot.live) ==Int PotLive
  andBool #lookup(Pot_ORIG_STORAGE, #Pot.wards[ACCT_ID]) ==Int Junk_33
  andBool #lookup(Pot_ORIG_STORAGE, #Pot.dsr) ==Int Junk_34
  andBool #lookup(Pot_ORIG_STORAGE, #Pot.live) ==Int Junk_35
  andBool #Pot.wards[ACCT_ID] =/=Int #Pot.dsr
  andBool #Pot.wards[ACCT_ID] =/=Int #Pot.live
  andBool #Pot.dsr =/=Int #Pot.live 

// Vat_cage
claim [Vat.cage.pass]:
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
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( VGas -Int Csstore( ISTANBUL , 0 , Lives , Junk_1 ) ) +Int -5445 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.live <- 0 ] </storage>
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

  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Lives)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool ((VCallValue ==Int 0)
  andBool ((May ==Int 1))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.live) ==Int Lives
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.live) ==Int Junk_1
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.live 
[trusted, matching(infGas)]


// Cat_cage
claim [Cat.cage.pass]:
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
        <program> Cat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Cat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( VGas -Int Csstore( ISTANBUL , 0 , Live , Junk_1 ) ) +Int -5507 ) ) </gas>
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
          <code> Cat_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Cat.live <- 0 ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Cat => ?_ </nonce>
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

  andBool (#rangeUInt(256, Ward)
  andBool (#rangeUInt(256, Live)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool ((Ward ==Int 1)
  andBool ((VCallValue ==Int 0))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Cat.wards[CALLER_ID]) ==Int Ward
  andBool #lookup(ACCT_ID_STORAGE, #Cat.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Cat.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Cat.live) ==Int Junk_1
  andBool #Cat.wards[CALLER_ID] =/=Int #Cat.live 
[trusted, matching(infGas)]


// Vow_cage-deficit
claim [Vow.cage-deficit.pass]:
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
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( ( ( ( ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , 0 , 1 , Junk_4 ) ) -Int Csstore( ISTANBUL , 0 , Sin , Junk_5 ) ) -Int Csstore( ISTANBUL , 0 , Ash , Junk_6 ) ) -Int Csstore( ISTANBUL , 0 , FlapLive , Junk_16 ) ) -Int Csstore( ISTANBUL , 0 , Dai_f , Junk_9 ) ) -Int Csstore( ISTANBUL , ( Dai_v +Int Dai_f ) , Dai_v , Junk_10 ) ) -Int Csstore( ISTANBUL , 0 , FlopLive , Junk_18 ) ) -Int Csstore( ISTANBUL , ACCT_ID , FlopVow , Junk_19 ) ) -Int Csstore( ISTANBUL , ( ( Sin_v -Int Dai_v ) -Int Dai_f ) , Sin_v , Junk_11 ) ) -Int Csstore( ISTANBUL , 0 , ( Dai_v +Int Dai_f ) , Junk_10 ) ) -Int Csstore( ISTANBUL , ( ( Vice -Int Dai_v ) -Int Dai_f ) , Vice , Junk_13 ) ) -Int Csstore( ISTANBUL , ( ( Debt -Int Dai_v ) -Int Dai_f ) , Debt , Junk_12 ) ) +Int -56545 ) ) </gas>
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
      SetItem(Flapper)
      SetItem(Flopper)
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vow.live <- 0 ] [ #Vow.Sin <- 0 ] [ #Vow.Ash <- 0 ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vow => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.dai[Flapper] <- 0 ] [ #Vat.dai[ACCT_ID] <- 0 ] [ #Vat.sin[ACCT_ID] <- Sin_v -Int (Dai_v +Int Dai_f) ] [ #Vat.debt <- Debt -Int (Dai_v +Int Dai_f) ] [ #Vat.vice <- Vice -Int (Dai_v +Int Dai_f) ] </storage>
          <origStorage> Vat_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vat => ?_ </nonce>
        </account>
        <account>
          <acctID> Flapper </acctID>
          <balance> Flapper_balance </balance>
          <code> Flapper_bin_runtime </code>
          <storage> Flapper_STORAGE => Flapper_STORAGE [ #Flapper.live <- 0 ] </storage>
          <origStorage> Flapper_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
        </account>
        <account>
          <acctID> Flopper </acctID>
          <balance> Flopper_balance </balance>
          <code> Flopper_bin_runtime </code>
          <storage> Flopper_STORAGE => Flopper_STORAGE [ #Flopper.live <- 0 ] [ #Flopper.vow <- ACCT_ID ] </storage>
          <origStorage> Flopper_ORIG_STORAGE </origStorage>
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

  andBool (#rangeAddress(Vat)
  andBool (#rangeAddress(Flapper)
  andBool (#rangeAddress(Flopper)
  andBool (#rangeAddress(FlapVat)
  andBool (#rangeUInt(256, MayFlap)
  andBool (#rangeUInt(256, MayFlop)
  andBool (#rangeUInt(256, Dai_v)
  andBool (#rangeUInt(256, Sin_v)
  andBool (#rangeUInt(256, Dai_f)
  andBool (#rangeUInt(256, Debt)
  andBool (#rangeUInt(256, Vice)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, Sin)
  andBool (#rangeUInt(256, Ash)
  andBool (#rangeUInt(256, FlapLive)
  andBool (#rangeUInt(256, FlopLive)
  andBool (#rangeAddress(FlopVow)
  andBool (#rangeUInt(256, Vat_balance)
  andBool (#rangeUInt(256, Flapper_balance)
  andBool (#rangeUInt(256, Flopper_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Flapper))
  andBool ((#notPrecompileAddress(Flopper))
  andBool ((#notPrecompileAddress(FlapVat))
  andBool ((#notPrecompileAddress(FlopVow))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((ACCT_ID =/=Int Flapper)
  andBool ((ACCT_ID =/=Int Flopper)
  andBool ((Dai_v +Int Dai_f <Int Sin_v)
  andBool ((Flapper =/=Int ACCT_ID)
  andBool ((Flapper =/=Int Vat)
  andBool ((Flopper =/=Int ACCT_ID)
  andBool ((Flopper =/=Int Vat)
  andBool ((Flopper =/=Int Flapper)
  andBool ((FlapVat ==Int  Vat)
  andBool ((Vat =/=Int 0)
  andBool ((Flapper =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_14)
  andBool (#rangeUInt(256, Junk_15)
  andBool (#rangeUInt(256, Junk_16)
  andBool (#rangeUInt(256, Junk_17)
  andBool (#rangeUInt(256, Junk_18)
  andBool (#rangeUInt(256, Junk_19)
  andBool (((VCallValue ==Int 0))
  andBool (((VCallDepth <Int 1023))
  andBool (((Live ==Int 1))
  andBool (((Can ==Int 1))
  andBool (((MayFlap ==Int 1))
  andBool (((MayFlop ==Int 1))
  andBool ((#rangeUInt(256, Debt -Int (Dai_v +Int Dai_f)))
  andBool ((#rangeUInt(256, Vice -Int (Dai_v +Int Dai_f))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vow.wards[CALLER_ID]) ==Int Can
  andBool #lookup(ACCT_ID_STORAGE, #Vow.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Vow.flopper) ==Int Flopper
  andBool #lookup(ACCT_ID_STORAGE, #Vow.flapper) ==Int Flapper
  andBool #lookup(ACCT_ID_STORAGE, #Vow.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #Vow.Sin) ==Int Sin
  andBool #lookup(ACCT_ID_STORAGE, #Vow.Ash) ==Int Ash
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.vat) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.flopper) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.flapper) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.live) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Sin) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vow.Ash) ==Int Junk_6
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.vat
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.flopper
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.flapper
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.live
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.Sin
  andBool #Vow.wards[CALLER_ID] =/=Int #Vow.Ash
  andBool #Vow.vat =/=Int #Vow.flopper
  andBool #Vow.vat =/=Int #Vow.flapper
  andBool #Vow.vat =/=Int #Vow.live
  andBool #Vow.vat =/=Int #Vow.Sin
  andBool #Vow.vat =/=Int #Vow.Ash
  andBool #Vow.flopper =/=Int #Vow.flapper
  andBool #Vow.flopper =/=Int #Vow.live
  andBool #Vow.flopper =/=Int #Vow.Sin
  andBool #Vow.flopper =/=Int #Vow.Ash
  andBool #Vow.flapper =/=Int #Vow.live
  andBool #Vow.flapper =/=Int #Vow.Sin
  andBool #Vow.flapper =/=Int #Vow.Ash
  andBool #Vow.live =/=Int #Vow.Sin
  andBool #Vow.live =/=Int #Vow.Ash
  andBool #Vow.Sin =/=Int #Vow.Ash
  andBool #lookup(Vat_STORAGE, #Vat.can[Flapper][Flapper]) ==Int Junk_7
  andBool #lookup(Vat_STORAGE, #Vat.dai[Flapper]) ==Int Dai_f
  andBool #lookup(Vat_STORAGE, #Vat.dai[ACCT_ID]) ==Int Dai_v
  andBool #lookup(Vat_STORAGE, #Vat.sin[ACCT_ID]) ==Int Sin_v
  andBool #lookup(Vat_STORAGE, #Vat.debt) ==Int Debt
  andBool #lookup(Vat_STORAGE, #Vat.vice) ==Int Vice
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[Flapper][Flapper]) ==Int Junk_8
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[Flapper]) ==Int Junk_9
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[ACCT_ID]) ==Int Junk_10
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.sin[ACCT_ID]) ==Int Junk_11
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.debt) ==Int Junk_12
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.vice) ==Int Junk_13
  andBool #Vat.can[Flapper][Flapper] =/=Int #Vat.dai[Flapper]
  andBool #Vat.can[Flapper][Flapper] =/=Int #Vat.dai[ACCT_ID]
  andBool #Vat.can[Flapper][Flapper] =/=Int #Vat.sin[ACCT_ID]
  andBool #Vat.can[Flapper][Flapper] =/=Int #Vat.debt
  andBool #Vat.can[Flapper][Flapper] =/=Int #Vat.vice
  andBool #Vat.dai[Flapper] =/=Int #Vat.dai[ACCT_ID]
  andBool #Vat.dai[Flapper] =/=Int #Vat.sin[ACCT_ID]
  andBool #Vat.dai[Flapper] =/=Int #Vat.debt
  andBool #Vat.dai[Flapper] =/=Int #Vat.vice
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.sin[ACCT_ID]
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.dai[ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.sin[ACCT_ID] =/=Int #Vat.debt
  andBool #Vat.sin[ACCT_ID] =/=Int #Vat.vice
  andBool #Vat.debt =/=Int #Vat.vice
  andBool #lookup(Flapper_STORAGE, #Flapper.wards[ACCT_ID]) ==Int MayFlap
  andBool #lookup(Flapper_STORAGE, #Flapper.vat) ==Int FlapVat
  andBool #lookup(Flapper_STORAGE, #Flapper.live) ==Int FlapLive
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.wards[ACCT_ID]) ==Int Junk_14
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.vat) ==Int Junk_15
  andBool #lookup(Flapper_ORIG_STORAGE, #Flapper.live) ==Int Junk_16
  andBool #Flapper.wards[ACCT_ID] =/=Int #Flapper.vat
  andBool #Flapper.wards[ACCT_ID] =/=Int #Flapper.live
  andBool #Flapper.vat =/=Int #Flapper.live
  andBool #lookup(Flopper_STORAGE, #Flopper.wards[ACCT_ID]) ==Int MayFlop
  andBool #lookup(Flopper_STORAGE, #Flopper.live) ==Int FlopLive
  andBool #lookup(Flopper_STORAGE, #Flopper.vow) ==Int FlopVow
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.wards[ACCT_ID]) ==Int Junk_17
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.live) ==Int Junk_18
  andBool #lookup(Flopper_ORIG_STORAGE, #Flopper.vow) ==Int Junk_19
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.live
  andBool #Flopper.wards[ACCT_ID] =/=Int #Flopper.vow
  andBool #Flopper.live =/=Int #Flopper.vow 
[trusted, matching(infGas)]


// Spotter_cage
claim [Spotter.cage.pass]:
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
        <program> Spotter_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Spotter_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( VGas -Int Csstore( ISTANBUL , 0 , Junk_0 , Junk_2 ) ) +Int -5396 ) ) </gas>
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
          <code> Spotter_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Spotter.live <- 0 ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Spotter => ?_ </nonce>
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

  andBool (#rangeUInt(256, May)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((May ==Int 1)
  andBool ((VCallValue ==Int 0))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Spotter.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Spotter.live) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Spotter.wards[CALLER_ID]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Spotter.live) ==Int Junk_2
  andBool #Spotter.wards[CALLER_ID] =/=Int #Spotter.live 
[trusted, matching(infGas)]


// Pot_cage
claim [Pot.cage.pass]:
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
        <program> Pot_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Pot_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("cage", .TypedArgs) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , 0 , Live , Junk_2 ) ) -Int Csstore( ISTANBUL , 1000000000000000000000000000 , Dsr , Junk_1 ) ) +Int -5455 ) ) </gas>
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
          <code> Pot_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Pot.dsr <- #Ray ] [ #Pot.live <- 0 ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Pot => ?_ </nonce>
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

  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Dsr)
  andBool (#rangeUInt(256, Live)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((May ==Int 1)
  andBool ((VCallValue ==Int 0))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Pot.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Pot.dsr) ==Int Dsr
  andBool #lookup(ACCT_ID_STORAGE, #Pot.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Pot.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Pot.dsr) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Pot.live) ==Int Junk_2
  andBool #Pot.wards[CALLER_ID] =/=Int #Pot.dsr
  andBool #Pot.wards[CALLER_ID] =/=Int #Pot.live
  andBool #Pot.dsr =/=Int #Pot.live 
[trusted, matching(infGas)]


endmodule
