<?xml version="1.0" encoding="UTF-8"?>
<SCL revision="B" version="2007" xmlns="http://www.iec.ch/61850/2003/SCL" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<Header toolID="TMW SCL Navigator V1.0" version="1" id=""/>
	<Communication>
		<SubNetwork name="SubNetworkName">
			<ConnectedAP apName="AP" iedName="OSU_SS1">
				<Address>
					<P type="OSI-AP-Title">1,1,9999,1</P>
					<P type="OSI-AE-Qualifier">12</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED name="OSU_SS1" manufacturer="OSU" configVersion="1.0" originalSclRevision="B" originalSclVersion="2007">
		<Services>
			<DynAssociation max="10"/>
			<ConfLogControl max="10"/>
			<GOOSE max="10"/>
			<ConfSigRef max="100"/>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<DataObjectDirectory/>
			<GetDataSetValue/>
			<SetDataSetValue/>
			<DataSetDirectory/>
			<ConfDataSet maxAttributes="50" max="50"/>
			<DynDataSet max="100" maxAttributes="50"/>
			<ReadWrite/>
			<ConfReportControl bufConf="true" bufMode="both" max="50"/>
			<GetCBValues/>
			<ReportSettings rptID="Dyn" trgOps="Dyn" intgPd="Dyn" optFields="Dyn" cbName="Conf" datSet="Dyn" bufTime="Dyn" resvTms="true" owner="true"/>
			<LogSettings trgOps="Dyn" intgPd="Dyn" cbName="Conf" datSet="Dyn" logEna="Dyn"/>
			<GSESettings appID="Dyn" dataLabel="Dyn" cbName="Conf" datSet="Dyn"/>
			<FileHandling/>
			<ConfLNs/>
		</Services>
		<AccessPoint name="AP">
			<Server>
				<Authentication/>
				<LDevice inst="CTRL">
					<LN0 lnType="LLN0_2007" lnClass="LLN0" inst="">
						<DOI name="NamPlt">
							<DAI name="vendor">
								<Val>OSU</Val>
							</DAI>
							<DAI name="swRev">
								<Val>1.0</Val>
							</DAI>
							<DAI name="paramRev">
								<Val>0</Val>
							</DAI>
							<DAI name="valRev">
								<Val>0</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007</Val>
							</DAI>
						</DOI>
						<DOI name="Beh">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="Mod">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="Loc">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="LocSta">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="Diag">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="MltLev">
							<DAI name="setVal">
								<Val>False</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" inst="1" lnType="LPHD_TYPE">
						<DOI name="PhyNam">
							<DAI name="vendor">
								<Val>OSU</Val>
							</DAI>
							<DAI name="latitude">
								<Val>0.000000</Val>
							</DAI>
							<DAI name="longitude">
								<Val>0.000000</Val>
							</DAI>
							<DAI name="altitude">
								<Val>0.000000</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="OutOv">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="Proxy">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="InOv">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmh">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="NumPwrUp">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="WrmStr">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="WacTrg">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="PwrUp">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="PwrDn">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="PwrSupAlm">
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
						</DOI>
						<DOI name="RsStat">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="Sim">
							<SDI name="origin">
								<DAI name="orCat">
									<Val>not-supported</Val>
								</DAI>
							</SDI>
							<DAI name="stVal">
								<Val>False</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GGIO" inst="1" lnType="GGIO_TYPE"/>
					<LN lnClass="GGIO" inst="2" lnType="GGIO_TYPE"/>
					<LN lnClass="GGIO" inst="3" lnType="GGIO_TYPE"/>
					<LN lnClass="GGIO" inst="4" lnType="GGIO_TYPE"/>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType id="LLN0_2007" lnClass="LLN0">
			<DO name="NamPlt" type="LPL_LD2007"/>
			<DO name="Beh" type="ENS_Beh"/>
			<DO name="Health" type="ENS_Health"/>
			<DO name="Mod" type="ENC_Mod_direct"/>
			<DO name="LocKey" type="SPS_noSVnoBL"/>
			<DO name="Loc" type="SPS_noSVnoBL"/>
			<DO name="LocSta" type="SPC_direct"/>
			<DO name="Diag" type="SPC_direct"/>
			<DO name="LEDRs" type="SPC_direct"/>
			<DO name="MltLev" type="SPG_SP"/>
		</LNodeType>
		<LNodeType id="LPHD_TYPE" lnClass="LPHD">
			<DO name="PhyNam" type="DPL_Full"/>
			<DO name="PhyHealth" type="ENS_Health"/>
			<DO name="OutOv" type="SPS_noSVnoBL"/>
			<DO name="Proxy" type="SPS_noSVnoBL"/>
			<DO name="InOv" type="SPS_noSVnoBL"/>
			<DO name="OpTmh" type="INS_noSVnoBL"/>
			<DO name="NumPwrUp" type="INS_noSVnoBL"/>
			<DO name="WrmStr" type="INS_noSVnoBL"/>
			<DO name="WacTrg" type="INS_noSVnoBL"/>
			<DO name="PwrUp" type="SPS_noSVnoBL"/>
			<DO name="PwrDn" type="SPS_noSVnoBL"/>
			<DO name="PwrSupAlm" type="SPS_noSVnoBL"/>
			<DO name="RsStat" type="SPC_direct"/>
			<DO name="Sim" type="SPC_direct"/>
		</LNodeType>
		<LNodeType id="GGIO_TYPE" lnClass="GGIO">
			<DO name="NamPlt" type="LPL"/>
			<DO name="Beh" type="ENS"/>
			<DO name="Health" type="ENS1"/>
			<DO name="Blk" type="SPS"/>
			<DO name="Mod" type="ENC"/>
			<DO name="CmdBlk" type="SPC"/>
			<DO name="InRef1" type="ORG"/>
			<DO name="BlkRef1" type="ORG"/>
			<DO name="ClcExp" type="SPS"/>
			<DO name="ClcStr" type="SPC"/>
			<DO name="ClcMth" type="ENG"/>
			<DO name="ClcMod" type="ENG1"/>
			<DO name="ClcIntvTyp" type="ENG2"/>
			<DO name="ClcIntvPer" type="ING"/>
			<DO name="NumSubIntv" type="ING"/>
			<DO name="ClcRfTyp" type="ENG2"/>
			<DO name="ClcRfPer" type="ING"/>
			<DO name="ClcSrc" type="ORG"/>
			<DO name="ClcNxTmms" type="ING"/>
			<DO name="InSyn" type="ORG"/>
			<DO name="EEName" type="DPL"/>
			<DO name="EEHealth" type="ENS1"/>
			<DO name="LocKey" type="SPS"/>
			<DO name="Loc" type="SPS"/>
			<DO name="IntIn1" type="INS"/>
			<DO name="Alm1" type="SPS"/>
			<DO name="Wrn1" type="SPS"/>
			<DO name="Ind1" type="SPS"/>
			<DO name="AnIn1" type="MV"/>
			<DO name="AnOut1" type="APC"/>
			<DO name="CntVal1" type="BCR"/>
			<DO name="OpTmh" type="INS"/>
			<DO name="OpCntRs" type="INC"/>
			<DO name="LocSta" type="SPC"/>
			<DO name="SPCSO1" type="SPC"/>
			<DO name="DPCSO1" type="DPC"/>
			<DO name="ISCSO1" type="INC"/>
		</LNodeType>
		<DOType id="LPL_LD2007" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="configRev" bType="VisString255" fc="DC"/>
			<DA name="paramRev" bType="INT32" fc="ST" dchg="true"/>
			<DA name="valRev" bType="INT32" fc="ST" dchg="true"/>
			<DA name="ldNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENS_Beh" cdc="ENS">
			<DA name="stVal" bType="Enum" type="BehaviourModeKind" fc="ST" dchg="true" dupd="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="ENS_Health" cdc="ENS">
			<DA name="stVal" bType="Enum" type="HealthKind" fc="ST" dchg="true" dupd="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="ENC_Mod_direct" cdc="ENC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="stVal" bType="Enum" type="BehaviourModeKind" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" valKind="RO"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="Oper" bType="Struct" type="OperBehaviourModeKind" fc="CO"/>
		</DOType>
		<DOType id="SPS_noSVnoBL" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="SPC_direct" cdc="SPC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" valKind="RO" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="Oper" bType="Struct" type="OperBool" fc="CO"/>
		</DOType>
		<DOType id="SPG_SP" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" fc="SP" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="DPL_Full" cdc="DPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="hwRev" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="serNum" bType="VisString255" fc="DC"/>
			<DA name="model" bType="VisString255" fc="DC"/>
			<DA name="location" bType="VisString255" fc="DC"/>
			<DA name="name" bType="VisString64" fc="DC"/>
			<DA name="owner" bType="VisString255" fc="DC"/>
			<DA name="ePSName" bType="VisString255" fc="DC"/>
			<DA name="primeOper" bType="VisString255" fc="DC"/>
			<DA name="secondOper" bType="VisString255" fc="DC"/>
			<DA name="latitude" bType="FLOAT32" fc="DC"/>
			<DA name="longitude" bType="FLOAT32" fc="DC"/>
			<DA name="altitude" bType="FLOAT32" fc="DC"/>
			<DA name="mRID" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="INS_noSVnoBL" cdc="INS">
			<DA name="stVal" bType="INT32" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="LPL" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="configRev" bType="VisString255" fc="DC"/>
			<DA name="paramRev" bType="INT32" fc="ST" dchg="true"/>
			<DA name="valRev" bType="INT32" fc="ST" dchg="true"/>
			<DA name="ldNs" bType="VisString255" fc="EX"/>
			<DA name="lnNs" bType="VisString255" fc="EX"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENS" cdc="ENS">
			<DA name="stVal" bType="Enum" type="BehaviourModeKind" fc="ST" dchg="true" dupd="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="BehaviourModeKind" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENS1" cdc="ENS">
			<DA name="stVal" bType="Enum" type="HealthKind" fc="ST" dchg="true" dupd="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="HealthKind" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENC" cdc="ENC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Enum" type="BehaviourModeKind" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="BehaviourModeKind" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" dchg="true"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sboClass" bType="Enum" type="SboClassKind" fc="CF" dchg="true"/>
			<DA name="operTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="SBO" bType="VisString129" fc="CO"/>
			<DA name="SBOw" bType="Struct" type="SBOwEnum" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SBOwEnum" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CancelEnum" fc="CO"/>
		</DOType>
		<DOType id="SPC" cdc="SPC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="pulseConfig" bType="Struct" type="PulseConfig" fc="CF" dchg="true"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" dchg="true"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sboClass" bType="Enum" type="SboClassKind" fc="CF" dchg="true"/>
			<DA name="operTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="SBO" bType="VisString129" fc="CO"/>
			<DA name="SBOw" bType="Struct" type="SBOwBOOLEAN" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SBOwBOOLEAN" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CancelBOOLEAN" fc="CO"/>
		</DOType>
		<DOType id="ORG" cdc="ORG">
			<DA name="setSrcRef" bType="VisString129" fc="SP" dchg="true"/>
			<DA name="setTstRef" bType="VisString129" fc="SP" dchg="true"/>
			<DA name="setSrcCB" bType="VisString129" fc="SP" dchg="true"/>
			<DA name="setTstCB" bType="VisString129" fc="SP" dchg="true"/>
			<DA name="intAddr" bType="VisString255" fc="SP" dchg="true"/>
			<DA name="tstEna" bType="BOOLEAN" fc="SP" dchg="true"/>
			<DA name="purpose" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENG" cdc="ENG">
			<DA name="setVal" bType="Enum" type="CalcMethodKind" fc="SP" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENG1" cdc="ENG">
			<DA name="setVal" bType="Enum" type="CalcModeKind" fc="SP" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ENG2" cdc="ENG">
			<DA name="setVal" bType="Enum" type="CalcIntervalKind" fc="SP" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="ING" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SP" dchg="true"/>
			<DA name="minVal" bType="INT32" fc="CF" dchg="true"/>
			<DA name="maxVal" bType="INT32" fc="CF" dchg="true"/>
			<DA name="stepSize" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="DPL" cdc="DPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="hwRev" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="serNum" bType="VisString255" fc="DC"/>
			<DA name="model" bType="VisString255" fc="DC"/>
			<DA name="location" bType="VisString255" fc="DC"/>
			<DA name="name" bType="VisString64" fc="DC"/>
			<DA name="owner" bType="VisString255" fc="DC"/>
			<DA name="ePSName" bType="VisString255" fc="DC"/>
			<DA name="primeOper" bType="VisString255" fc="DC"/>
			<DA name="secondOper" bType="VisString255" fc="DC"/>
			<DA name="latitude" bType="FLOAT32" fc="DC"/>
			<DA name="longitude" bType="FLOAT32" fc="DC"/>
			<DA name="altitude" bType="FLOAT32" fc="DC"/>
			<DA name="mRID" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="INS" cdc="INS">
			<DA name="stVal" bType="INT32" fc="ST" dchg="true" dupd="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="MV" cdc="MV">
			<DA name="instMag" bType="Struct" type="AnalogueValue" fc="MX"/>
			<DA name="mag" bType="Struct" type="AnalogueValue" fc="MX" dchg="true" dupd="true"/>
			<DA name="range" bType="Enum" type="RangeKind" fc="MX" dchg="true"/>
			<DA name="q" bType="Quality" fc="MX" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF" dchg="true"/>
			<DA name="db" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="zeroDb" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sVC" bType="Struct" type="ScaledValueConfig" fc="CF" dchg="true"/>
			<DA name="rangeC" bType="Struct" type="RangeConfig" fc="CF" dchg="true"/>
			<DA name="smpRate" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="APC" cdc="APC">
			<DA name="origin" bType="Struct" type="Originator" fc="MX"/>
			<DA name="ctlNum" bType="INT8U" fc="MX"/>
			<DA name="mxVal" bType="Struct" type="AnalogueValue" fc="MX" dchg="true"/>
			<DA name="q" bType="Quality" fc="MX" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="stSeld" bType="BOOLEAN" fc="MX" dchg="true"/>
			<DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Struct" type="AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" dchg="true"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sboClass" bType="Enum" type="SboClassKind" fc="CF" dchg="true"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF" dchg="true"/>
			<DA name="db" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sVC" bType="Struct" type="ScaledValueConfig" fc="CF" dchg="true"/>
			<DA name="minVal" bType="Struct" type="AnalogueValue" fc="CF" dchg="true"/>
			<DA name="maxVal" bType="Struct" type="AnalogueValue" fc="CF" dchg="true"/>
			<DA name="stepSize" bType="Struct" type="AnalogueValue" fc="CF" dchg="true"/>
			<DA name="operTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="SBO" bType="VisString129" fc="CO"/>
			<DA name="SBOw" bType="Struct" type="SBOwAnalog" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SBOwAnalog" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CancelAnalog" fc="CO"/>
		</DOType>
		<DOType id="BCR" cdc="BCR">
			<DA name="actVal" bType="INT64" fc="ST" dchg="true"/>
			<DA name="frVal" bType="INT64" fc="ST" dupd="true"/>
			<DA name="frTm" bType="Timestamp" fc="ST"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF" dchg="true"/>
			<DA name="pulsQty" bType="FLOAT32" fc="CF" dchg="true"/>
			<DA name="frEna" bType="BOOLEAN" fc="CF" dchg="true"/>
			<DA name="strTm" bType="Timestamp" fc="CF" dchg="true"/>
			<DA name="frPd" bType="INT32" fc="CF" dchg="true"/>
			<DA name="frRs" bType="BOOLEAN" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
		</DOType>
		<DOType id="INC" cdc="INC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="INT32" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" dchg="true"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sboClass" bType="Enum" type="SboClassKind" fc="CF" dchg="true"/>
			<DA name="minVal" bType="INT32" fc="CF" dchg="true"/>
			<DA name="maxVal" bType="INT32" fc="CF" dchg="true"/>
			<DA name="stepSize" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="operTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="units" bType="Struct" type="Unit" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="SBO" bType="VisString129" fc="CO"/>
			<DA name="SBOw" bType="Struct" type="SBOwINT32" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SBOwINT32" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CancelINT32" fc="CO"/>
		</DOType>
		<DOType id="DPC" cdc="DPC">
			<DA name="origin" bType="Struct" type="Originator" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Dbpos" fc="ST" dchg="true"/>
			<DA name="q" bType="Quality" fc="ST" qchg="true"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true"/>
			<DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Dbpos" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="pulseConfig" bType="Struct" type="PulseConfig" fc="CF" dchg="true"/>
			<DA name="ctlModel" bType="Enum" type="CtlModelKind" fc="CF" dchg="true"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="sboClass" bType="Enum" type="SboClassKind" fc="CF" dchg="true"/>
			<DA name="operTimeout" bType="INT32U" fc="CF" dchg="true"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX"/>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="SBO" bType="VisString129" fc="CO"/>
			<DA name="SBOw" bType="Struct" type="SBOwBOOLEAN" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SBOwBOOLEAN" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CancelBOOLEAN" fc="CO"/>
		</DOType>
		<DAType id="Originator">
			<BDA name="orCat" bType="Enum" type="OriginatorCategoryKind"/>
			<BDA name="orIdent" bType="Octet64"/>
		</DAType>
		<DAType id="OperBehaviourModeKind">
			<BDA name="ctlVal" bType="Enum" type="BehaviourModeKind"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
		</DAType>
		<DAType id="OperBool">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
		</DAType>
		<DAType id="SBOwEnum">
			<BDA name="ctlVal" bType="Enum" type="BehaviourModeKind"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="CancelEnum">
			<BDA name="ctlVal" bType="Enum" type="BehaviourModeKind"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="PulseConfig">
			<BDA name="cmdQual" bType="Enum" type="ControlOutputKind"/>
			<BDA name="onDur" bType="INT32U"/>
			<BDA name="offDur" bType="INT32U"/>
			<BDA name="numPls" bType="INT32U"/>
		</DAType>
		<DAType id="SBOwBOOLEAN">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="CancelBOOLEAN">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="Unit">
			<BDA name="SIUnit" bType="Enum" type="SIUnitKind"/>
			<BDA name="multiplier" bType="Enum" type="MultiplierKind"/>
		</DAType>
		<DAType id="AnalogueValue">
			<BDA name="i" bType="INT32"/>
			<BDA name="f" bType="FLOAT32"/>
		</DAType>
		<DAType id="ScaledValueConfig">
			<BDA name="scaleFactor" bType="FLOAT32"/>
			<BDA name="offset" bType="FLOAT32"/>
		</DAType>
		<DAType id="RangeConfig">
			<BDA name="hhLim" bType="Struct" type="AnalogueValue"/>
			<BDA name="hLim" bType="Struct" type="AnalogueValue"/>
			<BDA name="lLim" bType="Struct" type="AnalogueValue"/>
			<BDA name="llLim" bType="Struct" type="AnalogueValue"/>
			<BDA name="min" bType="Struct" type="AnalogueValue"/>
			<BDA name="max" bType="Struct" type="AnalogueValue"/>
			<BDA name="limDb" bType="INT32U"/>
		</DAType>
		<DAType id="SBOwAnalog">
			<BDA name="ctlVal" bType="Struct" type="AnalogueValue"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="CancelAnalog">
			<BDA name="ctlVal" bType="Struct" type="AnalogueValue"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SBOwINT32">
			<BDA name="ctlVal" bType="INT32"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="CancelINT32">
			<BDA name="ctlVal" bType="INT32"/>
			<BDA name="operTm" bType="Timestamp"/>
			<BDA name="origin" bType="Struct" type="Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<EnumType id="BehaviourModeKind">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="HealthKind">
			<EnumVal ord="1">Ok</EnumVal>
			<EnumVal ord="2">Warning</EnumVal>
			<EnumVal ord="3">Alarm</EnumVal>
		</EnumType>
		<EnumType id="CtlModelKind">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="SboClassKind">
			<EnumVal ord="0">operate-once</EnumVal>
			<EnumVal ord="1">operate-many</EnumVal>
		</EnumType>
		<EnumType id="CalcMethodKind">
			<EnumVal ord="1">UNSPECIFIED</EnumVal>
			<EnumVal ord="2">TRUE_RMS</EnumVal>
			<EnumVal ord="3">PEAK_FUNDAMENTAL</EnumVal>
			<EnumVal ord="4">RMS_FUNDAMENTAL</EnumVal>
			<EnumVal ord="5">MIN</EnumVal>
			<EnumVal ord="6">MAX</EnumVal>
			<EnumVal ord="7">AVG</EnumVal>
			<EnumVal ord="8">SDV</EnumVal>
			<EnumVal ord="9">PREDICTION</EnumVal>
			<EnumVal ord="10">RATE</EnumVal>
		</EnumType>
		<EnumType id="CalcModeKind">
			<EnumVal ord="1">TOTAL</EnumVal>
			<EnumVal ord="2">PERIOD</EnumVal>
			<EnumVal ord="3">SLIDING</EnumVal>
		</EnumType>
		<EnumType id="CalcIntervalKind">
			<EnumVal ord="1">MS</EnumVal>
			<EnumVal ord="2">PER_CYCLE</EnumVal>
			<EnumVal ord="3">CYCLE</EnumVal>
			<EnumVal ord="4">DAY</EnumVal>
			<EnumVal ord="5">WEEK</EnumVal>
			<EnumVal ord="6">MONTH</EnumVal>
			<EnumVal ord="7">YEAR</EnumVal>
			<EnumVal ord="8">EXTERNAL</EnumVal>
		</EnumType>
		<EnumType id="RangeKind">
			<EnumVal ord="0">normal</EnumVal>
			<EnumVal ord="1">high</EnumVal>
			<EnumVal ord="2">low</EnumVal>
			<EnumVal ord="3">high-high</EnumVal>
			<EnumVal ord="4">low-low</EnumVal>
		</EnumType>
		<EnumType id="OriginatorCategoryKind">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>
		<EnumType id="ControlOutputKind">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>
		<EnumType id="SIUnitKind">
			<EnumVal ord="1">No Units</EnumVal>
			<EnumVal ord="2">m</EnumVal>
			<EnumVal ord="3">kg</EnumVal>
			<EnumVal ord="4">s</EnumVal>
			<EnumVal ord="5">A</EnumVal>
			<EnumVal ord="6">K</EnumVal>
			<EnumVal ord="7">mol</EnumVal>
			<EnumVal ord="8">cd</EnumVal>
			<EnumVal ord="9">deg</EnumVal>
			<EnumVal ord="10">rad</EnumVal>
			<EnumVal ord="11">sr</EnumVal>
			<EnumVal ord="21">Gy</EnumVal>
			<EnumVal ord="22">Bq</EnumVal>
			<EnumVal ord="23">°C</EnumVal>
			<EnumVal ord="24">Sv</EnumVal>
			<EnumVal ord="25">F</EnumVal>
			<EnumVal ord="26">C</EnumVal>
			<EnumVal ord="27">S</EnumVal>
			<EnumVal ord="28">H</EnumVal>
			<EnumVal ord="29">V</EnumVal>
			<EnumVal ord="30">ohm</EnumVal>
			<EnumVal ord="31">J</EnumVal>
			<EnumVal ord="32">N</EnumVal>
			<EnumVal ord="33">Hz</EnumVal>
			<EnumVal ord="34">lx</EnumVal>
			<EnumVal ord="35">Lm</EnumVal>
			<EnumVal ord="36">Wb</EnumVal>
			<EnumVal ord="37">T</EnumVal>
			<EnumVal ord="38">W</EnumVal>
			<EnumVal ord="39">Pa</EnumVal>
			<EnumVal ord="41">m²</EnumVal>
			<EnumVal ord="42">m³</EnumVal>
			<EnumVal ord="43">m/s</EnumVal>
			<EnumVal ord="44">m/s²</EnumVal>
			<EnumVal ord="45">m³/s</EnumVal>
			<EnumVal ord="46">m/m³</EnumVal>
			<EnumVal ord="47">M</EnumVal>
			<EnumVal ord="48">kg/m³</EnumVal>
			<EnumVal ord="49">m²/s</EnumVal>
			<EnumVal ord="50">W/m K</EnumVal>
			<EnumVal ord="51">J/K</EnumVal>
			<EnumVal ord="52">ppm</EnumVal>
			<EnumVal ord="53">1/s</EnumVal>
			<EnumVal ord="54">rad/s</EnumVal>
			<EnumVal ord="61">VA</EnumVal>
			<EnumVal ord="62">Watts</EnumVal>
			<EnumVal ord="63">VAr</EnumVal>
			<EnumVal ord="64">phi</EnumVal>
			<EnumVal ord="65">cos(phi)</EnumVal>
			<EnumVal ord="66">Vs</EnumVal>
			<EnumVal ord="67">V²</EnumVal>
			<EnumVal ord="68">As</EnumVal>
			<EnumVal ord="69">A²</EnumVal>
			<EnumVal ord="70">A²t</EnumVal>
			<EnumVal ord="71">VAh</EnumVal>
			<EnumVal ord="72">Wh</EnumVal>
			<EnumVal ord="73">VArh</EnumVal>
			<EnumVal ord="74">V/Hz</EnumVal>
			<EnumVal ord="75">Hz/s</EnumVal>
			<EnumVal ord="76">char</EnumVal>
			<EnumVal ord="77">char/s</EnumVal>
			<EnumVal ord="78">kgm²</EnumVal>
			<EnumVal ord="79">dB</EnumVal>
			<EnumVal ord="80">J/Wh</EnumVal>
			<EnumVal ord="81">W/s</EnumVal>
			<EnumVal ord="82">l/s</EnumVal>
			<EnumVal ord="83">dBm</EnumVal>
		</EnumType>
		<EnumType id="MultiplierKind">
			<EnumVal ord="-24">y</EnumVal>
			<EnumVal ord="-21">z</EnumVal>
			<EnumVal ord="-18">a</EnumVal>
			<EnumVal ord="-15">f</EnumVal>
			<EnumVal ord="-12">p</EnumVal>
			<EnumVal ord="-9">n</EnumVal>
			<EnumVal ord="-6">µ</EnumVal>
			<EnumVal ord="-3">m</EnumVal>
			<EnumVal ord="-2">c</EnumVal>
			<EnumVal ord="-1">d</EnumVal>
			<EnumVal ord="0">No Multiplier</EnumVal>
			<EnumVal ord="1">da</EnumVal>
			<EnumVal ord="2">h</EnumVal>
			<EnumVal ord="3">k</EnumVal>
			<EnumVal ord="6">M</EnumVal>
			<EnumVal ord="9">G</EnumVal>
			<EnumVal ord="12">T</EnumVal>
			<EnumVal ord="15">P</EnumVal>
			<EnumVal ord="18">E</EnumVal>
			<EnumVal ord="21">Z</EnumVal>
			<EnumVal ord="24">Y</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>
